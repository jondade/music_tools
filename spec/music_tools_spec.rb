require 'music_tools'

describe MusicTools do
  describe '.sort' do
    context 'at invocation' do
      context 'given one argument it raises an exception' do
        it 'raises an argument error' do
          expect do
            MusicTools.sort('one argument')
          end.to raise_error(ArgumentError)
        end
      end
    end
    context 'for the file argument' do
      context 'given a missing filename' do
        it 'returns an exception' do
          expect do
            MusicTools.sort('some directory', 'some/missing/file')
          end.to raise_error(RuntimeError, 'Missing file')
        end
      end
    end
    context 'for the directory argument' do
      before(:context) do
        f = File.open('/tmp/test', 'w')
        f.close
      end
      context 'given an empty directory argument' do
        it 'raises an ArgumentError' do
          expect do
            MusicTools.sort('', 'some/test/file')
          end.to raise_error(ArgumentError)
        end
      end
      context 'given a missing directory' do
        it 'returns an exception' do
          expect do
            MusicTools.sort('/not/found/directory', '/tmp/test')
          end.to raise_error(RuntimeError, 'No such directory')
        end
      end
      after(:context) do
        File.unlink('/tmp/test')
      end
    end
  end
end
