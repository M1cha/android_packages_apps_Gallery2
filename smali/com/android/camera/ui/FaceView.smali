.class public Lcom/android/camera/ui/FaceView;
.super Landroid/view/View;
.source "FaceView.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field private final LOGV:Z

.field private final blink_threashold:I

.field private mDisplayOrientation:I

.field private final mDrawableFocusFailed:Landroid/graphics/drawable/Drawable;

.field private final mDrawableFocused:Landroid/graphics/drawable/Drawable;

.field private final mDrawableFocusing:Landroid/graphics/drawable/Drawable;

.field private mFaceIndicator:Landroid/graphics/drawable/Drawable;

.field private mFaces:[Landroid/hardware/Camera$Face;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMirror:Z

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPause:Z

.field private mRect:Landroid/graphics/RectF;

.field private final smile_threashold_no_smile:I

.field private final smile_threashold_small_smile:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v1, 0x3c

    const/4 v2, 0x1

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->LOGV:Z

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    .line 57
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/camera/ui/FaceView;->smile_threashold_no_smile:I

    .line 58
    iput v1, p0, Lcom/android/camera/ui/FaceView;->smile_threashold_small_smile:I

    .line 59
    iput v1, p0, Lcom/android/camera/ui/FaceView;->blink_threashold:I

    .line 63
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    .line 64
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocused:Landroid/graphics/drawable/Drawable;

    .line 65
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusFailed:Landroid/graphics/drawable/Drawable;

    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4120

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    .line 131
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 132
    return-void
.end method

.method public faceExists()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .parameter "canvas"

    .prologue
    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v2, v2

    if-lez v2, :cond_9

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/FaceView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/FaceView;->getHeight()I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 150
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 152
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    neg-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 153
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v2, v2

    if-ge v13, v2, :cond_8

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v13

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v13

    instance-of v2, v2, Lcom/qualcomm/camera/QCFace;

    if-eqz v2, :cond_5

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v10, v2, v13

    check-cast v10, Lcom/qualcomm/camera/QCFace;

    .line 166
    .local v10, face:Lcom/qualcomm/camera/QCFace;
    const/4 v2, 0x4

    new-array v0, v2, [F

    move-object/from16 v20, v0

    .line 167
    .local v20, point:[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v13

    iget-object v2, v2, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v8, v2, 0xc

    .line 168
    .local v8, delta_x:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v13

    iget-object v2, v2, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v9, v2, 0xc

    .line 169
    .local v9, delta_y:I
    const-string v2, "FaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blink: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/qualcomm/camera/QCFace;->getLeftEyeBlinkDegree()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/qualcomm/camera/QCFace;->getRightEyeBlinkDegree()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v2, v10, Lcom/qualcomm/camera/QCFace;->leftEye:Landroid/graphics/Point;

    if-eqz v2, :cond_0

    .line 171
    const/4 v2, 0x0

    iget-object v3, v10, Lcom/qualcomm/camera/QCFace;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v20, v2

    .line 172
    const/4 v2, 0x1

    iget-object v3, v10, Lcom/qualcomm/camera/QCFace;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v9, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v20, v2

    .line 173
    const/4 v2, 0x2

    iget-object v3, v10, Lcom/qualcomm/camera/QCFace;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v20, v2

    .line 174
    const/4 v2, 0x3

    iget-object v3, v10, Lcom/qualcomm/camera/QCFace;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v9, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v20, v2

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 176
    invoke-virtual {v10}, Lcom/qualcomm/camera/QCFace;->getLeftEyeBlinkDegree()I

    move-result v2

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_0

    .line 177
    const/4 v2, 0x0

    aget v3, v20, v2

    const/4 v2, 0x1

    aget v4, v20, v2

    const/4 v2, 0x2

    aget v5, v20, v2

    const/4 v2, 0x3

    aget v6, v20, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 181
    :cond_0
    iget-object v2, v10, Lcom/qualcomm/camera/QCFace;->rightEye:Landroid/graphics/Point;

    if-eqz v2, :cond_1

    .line 182
    const/4 v2, 0x0

    iget-object v3, v10, Lcom/qualcomm/camera/QCFace;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v20, v2

    .line 183
    const/4 v2, 0x1

    iget-object v3, v10, Lcom/qualcomm/camera/QCFace;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v9, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v20, v2

    .line 184
    const/4 v2, 0x2

    iget-object v3, v10, Lcom/qualcomm/camera/QCFace;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v20, v2

    .line 185
    const/4 v2, 0x3

    iget-object v3, v10, Lcom/qualcomm/camera/QCFace;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v9, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v20, v2

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 187
    invoke-virtual {v10}, Lcom/qualcomm/camera/QCFace;->getRightEyeBlinkDegree()I

    move-result v2

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_1

    .line 188
    const/4 v2, 0x0

    aget v3, v20, v2

    const/4 v2, 0x1

    aget v4, v20, v2

    const/4 v2, 0x2

    aget v5, v20, v2

    const/4 v2, 0x3

    aget v6, v20, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 192
    :cond_1
    invoke-virtual {v10}, Lcom/qualcomm/camera/QCFace;->getLeftRightGazeDegree()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v10}, Lcom/qualcomm/camera/QCFace;->getTopBottomGazeDegree()I

    move-result v2

    if-eqz v2, :cond_4

    .line 193
    :cond_2
    iget-object v2, v10, Lcom/qualcomm/camera/QCFace;->leftEye:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, v10, Lcom/qualcomm/camera/QCFace;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    iget-object v3, v10, Lcom/qualcomm/camera/QCFace;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, v10, Lcom/qualcomm/camera/QCFace;->rightEye:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    iget-object v3, v10, Lcom/qualcomm/camera/QCFace;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, v10, Lcom/qualcomm/camera/QCFace;->rightEye:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    iget-object v4, v10, Lcom/qualcomm/camera/QCFace;->leftEye:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, v10, Lcom/qualcomm/camera/QCFace;->rightEye:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000

    div-double v14, v2, v4

    .line 197
    .local v14, length:D
    invoke-virtual {v10}, Lcom/qualcomm/camera/QCFace;->getLeftRightGazeDegree()I

    move-result v2

    neg-int v2, v2

    int-to-double v0, v2

    move-wide/from16 v18, v0

    .line 198
    .local v18, nGazeYaw:D
    invoke-virtual {v10}, Lcom/qualcomm/camera/QCFace;->getTopBottomGazeDegree()I

    move-result v2

    neg-int v2, v2

    int-to-double v0, v2

    move-wide/from16 v16, v0

    .line 199
    .local v16, nGazePitch:D
    const-wide v2, 0x4066800000000000L

    div-double v2, v18, v2

    const-wide v4, 0x400921fb54442d18L

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v10}, Lcom/qualcomm/camera/QCFace;->getRollDirection()I

    move-result v4

    neg-int v4, v4

    int-to-double v4, v4

    const-wide v6, 0x4066800000000000L

    div-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L

    div-double v4, v16, v4

    const-wide v6, 0x400921fb54442d18L

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L

    div-double v6, v18, v6

    const-wide v21, 0x400921fb54442d18L

    mul-double v6, v6, v21

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {v10}, Lcom/qualcomm/camera/QCFace;->getRollDirection()I

    move-result v6

    neg-int v6, v6

    int-to-double v6, v6

    const-wide v21, 0x4066800000000000L

    div-double v6, v6, v21

    const-wide v21, 0x400921fb54442d18L

    mul-double v6, v6, v21

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    neg-double v4, v14

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-float v11, v2

    .line 204
    .local v11, gazeRollX:F
    move-wide/from16 v0, v18

    neg-double v2, v0

    const-wide v4, 0x4066800000000000L

    div-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-virtual {v10}, Lcom/qualcomm/camera/QCFace;->getRollDirection()I

    move-result v4

    neg-int v4, v4

    int-to-double v4, v4

    const-wide v6, 0x4066800000000000L

    div-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L

    div-double v4, v16, v4

    const-wide v6, 0x400921fb54442d18L

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L

    div-double v6, v18, v6

    const-wide v21, 0x400921fb54442d18L

    mul-double v6, v6, v21

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {v10}, Lcom/qualcomm/camera/QCFace;->getRollDirection()I

    move-result v6

    neg-int v6, v6

    int-to-double v6, v6

    const-wide v21, 0x4066800000000000L

    div-double v6, v6, v21

    const-wide v21, 0x400921fb54442d18L

    mul-double v6, v6, v21

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    neg-double v4, v14

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-float v12, v2

    .line 209
    .local v12, gazeRollY:F
    invoke-virtual {v10}, Lcom/qualcomm/camera/QCFace;->getLeftEyeBlinkDegree()I

    move-result v2

    const/16 v3, 0x3c

    if-ge v2, v3, :cond_3

    .line 210
    const/4 v2, 0x0

    iget-object v3, v10, Lcom/qualcomm/camera/QCFace;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v20, v2

    .line 211
    const/4 v2, 0x1

    iget-object v3, v10, Lcom/qualcomm/camera/QCFace;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v20, v2

    .line 212
    const/4 v2, 0x2

    iget-object v3, v10, Lcom/qualcomm/camera/QCFace;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v11

    aput v3, v20, v2

    .line 213
    const/4 v2, 0x3

    iget-object v3, v10, Lcom/qualcomm/camera/QCFace;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float/2addr v3, v12

    aput v3, v20, v2

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 215
    const/4 v2, 0x0

    aget v3, v20, v2

    const/4 v2, 0x1

    aget v4, v20, v2

    const/4 v2, 0x2

    aget v5, v20, v2

    const/4 v2, 0x3

    aget v6, v20, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 218
    :cond_3
    invoke-virtual {v10}, Lcom/qualcomm/camera/QCFace;->getRightEyeBlinkDegree()I

    move-result v2

    const/16 v3, 0x3c

    if-ge v2, v3, :cond_4

    .line 219
    const/4 v2, 0x0

    iget-object v3, v10, Lcom/qualcomm/camera/QCFace;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v20, v2

    .line 220
    const/4 v2, 0x1

    iget-object v3, v10, Lcom/qualcomm/camera/QCFace;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v20, v2

    .line 221
    const/4 v2, 0x2

    iget-object v3, v10, Lcom/qualcomm/camera/QCFace;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v11

    aput v3, v20, v2

    .line 222
    const/4 v2, 0x3

    iget-object v3, v10, Lcom/qualcomm/camera/QCFace;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float/2addr v3, v12

    aput v3, v20, v2

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 224
    const/4 v2, 0x0

    aget v3, v20, v2

    const/4 v2, 0x1

    aget v4, v20, v2

    const/4 v2, 0x2

    aget v5, v20, v2

    const/4 v2, 0x3

    aget v6, v20, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 228
    .end local v11           #gazeRollX:F
    .end local v12           #gazeRollY:F
    .end local v14           #length:D
    .end local v16           #nGazePitch:D
    .end local v18           #nGazeYaw:D
    :cond_4
    iget-object v2, v10, Lcom/qualcomm/camera/QCFace;->mouth:Landroid/graphics/Point;

    if-eqz v2, :cond_5

    .line 229
    const-string v2, "FaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/qualcomm/camera/QCFace;->getSmileDegree()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/qualcomm/camera/QCFace;->getSmileScore()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {v10}, Lcom/qualcomm/camera/QCFace;->getSmileDegree()I

    move-result v2

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_6

    .line 231
    const/4 v2, 0x0

    iget-object v3, v10, Lcom/qualcomm/camera/QCFace;->mouth:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v20, v2

    .line 232
    const/4 v2, 0x1

    iget-object v3, v10, Lcom/qualcomm/camera/QCFace;->mouth:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v9

    int-to-float v3, v3

    aput v3, v20, v2

    .line 233
    const/4 v2, 0x2

    iget-object v3, v10, Lcom/qualcomm/camera/QCFace;->mouth:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v20, v2

    .line 234
    const/4 v2, 0x3

    iget-object v3, v10, Lcom/qualcomm/camera/QCFace;->mouth:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v9

    int-to-float v3, v3

    aput v3, v20, v2

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 236
    const/4 v2, 0x0

    aget v3, v20, v2

    const/4 v2, 0x1

    aget v4, v20, v2

    const/4 v2, 0x2

    aget v5, v20, v2

    const/4 v2, 0x3

    aget v6, v20, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 153
    .end local v8           #delta_x:I
    .end local v9           #delta_y:I
    .end local v10           #face:Lcom/qualcomm/camera/QCFace;
    .end local v20           #point:[F
    :cond_5
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 237
    .restart local v8       #delta_x:I
    .restart local v9       #delta_y:I
    .restart local v10       #face:Lcom/qualcomm/camera/QCFace;
    .restart local v20       #point:[F
    :cond_6
    invoke-virtual {v10}, Lcom/qualcomm/camera/QCFace;->getSmileDegree()I

    move-result v2

    const/16 v3, 0x3c

    if-ge v2, v3, :cond_7

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v3, v10, Lcom/qualcomm/camera/QCFace;->mouth:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v8

    int-to-float v3, v3

    iget-object v4, v10, Lcom/qualcomm/camera/QCFace;->mouth:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v9

    int-to-float v4, v4

    iget-object v5, v10, Lcom/qualcomm/camera/QCFace;->mouth:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v8

    int-to-float v5, v5

    iget-object v6, v10, Lcom/qualcomm/camera/QCFace;->mouth:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/high16 v5, 0x4334

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1

    .line 243
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v3, v10, Lcom/qualcomm/camera/QCFace;->mouth:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v8

    int-to-float v3, v3

    iget-object v4, v10, Lcom/qualcomm/camera/QCFace;->mouth:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v9

    int-to-float v4, v4

    iget-object v5, v10, Lcom/qualcomm/camera/QCFace;->mouth:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v8

    int-to-float v5, v5

    iget-object v6, v10, Lcom/qualcomm/camera/QCFace;->mouth:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 252
    .end local v8           #delta_x:I
    .end local v9           #delta_y:I
    .end local v10           #face:Lcom/qualcomm/camera/QCFace;
    .end local v20           #point:[F
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 254
    .end local v13           #i:I
    :cond_9
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 255
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    .line 136
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    .line 140
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 86
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    .line 88
    return-void
.end method

.method public setFaces([Landroid/hardware/Camera$Face;)V
    .locals 1
    .parameter "faces"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    .line 82
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    goto :goto_0
.end method

.method public setMirror(Z)V
    .locals 0
    .parameter "mirror"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    .line 99
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 92
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    .line 93
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 94
    return-void
.end method

.method public showFail(Z)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusFailed:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 122
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 123
    return-void
.end method

.method public showStart()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 109
    return-void
.end method

.method public showSuccess(Z)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocused:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 115
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 116
    return-void
.end method
