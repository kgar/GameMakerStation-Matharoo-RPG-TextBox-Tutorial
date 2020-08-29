/// @function			draw_9slice(x, y, w, h, sprite, subimg)
function draw_9slice(x, y, w, h, sprite, subimg){
	var cellSize = sprite_get_width(sprite)/3;
	
	var mainWidth = w - cellSize*2;
	var mainHeight = h - cellSize*2;
	
	var mainScaleWidth = mainWidth/cellSize;
	var mainScaleHeight = mainHeight/cellSize;
	
	// Draw corners
	// Top left
	draw_sprite_part(sprite, subimg, 0, 0, cellSize, cellSize, x, y);
	
	// Top right
	draw_sprite_part(sprite, subimg, cellSize*2, 0, cellSize, cellSize, (x + w) - cellSize, y);
	
	// Bottom left
	draw_sprite_part(sprite, subimg, 0, cellSize*2, cellSize, cellSize, x, (y + h) - cellSize);
	
	// Bottom Right
	draw_sprite_part(sprite, subimg, cellSize*2, cellSize*2, cellSize, cellSize, (x + w) - cellSize, (y + h) - cellSize);
	
	// Other
	// Center
	draw_sprite_part_ext(sprite, subimg, cellSize, cellSize, cellSize, cellSize, x + cellSize, y + cellSize, mainScaleWidth, mainScaleHeight, -1, 1);
	
	// Top
	draw_sprite_part_ext(sprite, subimg, cellSize, 0, cellSize, cellSize, x + cellSize, y, mainScaleWidth, 1, -1, 1);
	
	//Bottom
	draw_sprite_part_ext(sprite, subimg, cellSize, cellSize*2, cellSize, cellSize, x + cellSize, (y + h) - cellSize, mainScaleWidth, 1, -1, 1);
	
	//Left
	draw_sprite_part_ext(sprite, subimg, 0, cellSize, cellSize, cellSize, x, y + cellSize, 1, mainScaleHeight, -1, 1);
	
	//Right
	draw_sprite_part_ext(sprite, subimg, cellSize*2, cellSize, cellSize, cellSize, (x + w) - cellSize, y + cellSize, 1, mainScaleHeight, -1, 1);
}