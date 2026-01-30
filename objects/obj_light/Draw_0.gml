// ==============================
// PONTOS INICIAL E FINAL
// ==============================
var x1 = x;
var y1 = y;
var x2 = mouse_x;
var y2 = mouse_y;

// Direção e distância máximas
var ang = point_direction(x1, y1, x2, y2);
var max_dist = point_distance(x1, y1, x2, y2);

// Precisão do raycast
var step = 1; // 1 = pixel perfect

// Ponto final real (ajustável por colisão)
var hit_x = x2;
var hit_y = y2;

// ==============================
// RAYCAST POR PONTO
// ==============================
for (var d = 0; d <= max_dist; d += step)
{
    var xx = x1 + lengthdir_x(d, ang);
    var yy = y1 + lengthdir_y(d, ang);

    if (collision_point(xx, yy, obj_colisao_pai, true, true))
    {
        hit_x = xx;
        hit_y = yy;
        break;
    }
}

// Atualiza ponto final
x2 = hit_x;
y2 = hit_y;

// ==============================
// DESENHO DA LINHA
// ==============================

// Distância e ângulo finais
var dist = point_distance(x1, y1, x2, y2);
var draw_ang = point_direction(x2, y2, x1, y1);

// Altura do sprite
var spr_h = sprite_get_height(spr_light);

// Escala vertical
var scale_y = dist / spr_h;

// Desenha a linha até o ponto correto
draw_sprite_ext(
    spr_light,
    0,
    x1,
    y1,
    1,
    scale_y,
    draw_ang - 90,
    c_white,
    1
);
