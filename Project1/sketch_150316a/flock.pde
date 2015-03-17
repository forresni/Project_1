class flock
{
  ArrayList<fish> fishs;
  
  flock()
  {
    fishs = new ArrayList<fish>();
  }
  void swim()
  {
    for (fish e : fishs)
    {
      e.swim(fishs);
    }
  }
  void addfish(fish e)
  {
    fishs.add(e);
  }
}
