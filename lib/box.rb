class Box
  def how_many_boxes(items, avilable_large, avilable_small)
    total_boxes = 0
    return -1 if (avilable_large * 5 + avilable_small) < items
    return items if avilable_large.zero?
    return -1 if items % (avilable_large * 5) > avilable_small
    while items >= 5 && avilable_large > 0
      items -= 5
      avilable_large -= 1
      total_boxes += 1
    end
    total_boxes += items
  end
end
