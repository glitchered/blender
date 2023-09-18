/* SPDX-FileCopyrightText: 2016-2022 Blender Authors
 *
 * SPDX-License-Identifier: GPL-2.0-or-later */

void main()
{
  gl_Position = ModelViewProjectionMatrix * vec4(pos, 1.0);
  gl_PointSize = size;
  finalColor = color;
}
