import java.nio.channels.FileChannel;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;

class Program {

	public static void main(String[] args) throws Exception {
		var file = Path.of(args[0]);
		var channel = FileChannel.open(file, StandardOpenOption.READ, StandardOpenOption.WRITE);
		var lock = channel.lock();
		int n = (int)channel.size();
		var buffer = channel.map(FileChannel.MapMode.READ_WRITE, 0, n);
		Transformer.transform(buffer, n);
		lock.release();
		channel.close();
	}
}

