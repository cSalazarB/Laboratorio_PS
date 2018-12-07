package com.example.dao;

import java.util.List;
import com.example.logic.*;
public interface InterfaceDao<T> {

	public List<T> listAll();

	public void add(T t);

	public void update(T t);

	public void delete(T t);

	public T findById(int id);

	public void changeState(int id, char state);
}
