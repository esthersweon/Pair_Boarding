# SECTION A

def file_list(hash)
  files = []

  hash.each do |item, nested_item|
    if nested_item.is_a?(Hash)
      folder = item
      nested_files = file_list(nested_item)
      nested_files.each { |file| files << "#{folder}/#{file}" }
    else
      files << item
    end
  end

  files
end

files = {
  'a' => {
    'b' => {
      'c' => {
        'd' => {
          'e' => true
        },

        'f' => true
      }
    }
  }
}

puts file_list(files)

# SECTION B

def find_missing_number(arr1, arr2)
  # arr1.select { |element| !arr2.include?(element)}
  arr1.inject(:+) - arr2.inject(:+)
end

puts find_missing_number([1, 2, 3, 4, 5], [5, 3, 1, 2])

def is_shuffle?(str1, str2, str3)
  return false if str1.length + str2.length != str3.length
end