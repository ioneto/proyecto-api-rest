if @review
  json.partial! "reviews/review", review: @review
end
if @reviews
  json.array! @reviews, partial: 'reviews/review', as: :review
end