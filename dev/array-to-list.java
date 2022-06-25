import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

public class ContextsToList {

	/**
	 * Takes an array of some base type E and creates a list of type T instantiating
	 * every element as a new T element. T constructor receives an E and should save
	 * any relevant field.
	 * 
	 * @param <T>       Generic output type.
	 * @param <E>       Base type for the input array
	 * @param elements  Array containing the data to be converted.
	 * @param someClass A class of the output type
	 * @return A list of T objects created from the array ones.
	 */
	public static <E, T> List<T> asList(E[] elements, Class<T> someClass) {

		List<T> results = new ArrayList<>();
		for (E element : elements) {

			Constructor<T> constructor = null;
			try {
				Class<?> arrayBaseType = elements.getClass().getComponentType();
				constructor = someClass.getConstructor(arrayBaseType);
			} catch (NoSuchMethodException | SecurityException e) {
				e.printStackTrace();
			}

			T t = null;
			try {
				t = constructor.newInstance(element);
			} catch (InstantiationException | IllegalAccessException | IllegalArgumentException
					| InvocationTargetException e) {

				e.printStackTrace();
			}

			results.add(t);
		}

		return results;
	}
}
