.class Lcom/android/camera/GraphView;
.super Landroid/view/View;
.source "Camera.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCamera:Lcom/android/camera/Camera;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mGraphCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mHeight:F

.field private mPaint:Landroid/graphics/Paint;

.field private mScale:F

.field private mWidth:F

.field private scaled:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 3267
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3254
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/GraphView;->mPaint:Landroid/graphics/Paint;

    .line 3255
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/camera/GraphView;->mCanvas:Landroid/graphics/Canvas;

    .line 3256
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/android/camera/GraphView;->mScale:F

    .line 3269
    iget-object v0, p0, Lcom/android/camera/GraphView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3270
    return-void
.end method


# virtual methods
.method public PreviewChanged()V
    .locals 0

    .prologue
    .line 3331
    invoke-virtual {p0}, Lcom/android/camera/GraphView;->invalidate()V

    .line 3332
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .parameter "canvas"

    .prologue
    .line 3281
    const-string v2, "GraphView"

    const-string v4, "in Camera.java ondraw"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3282
    sget-boolean v2, Lcom/android/camera/Camera;->mHiston:Z

    if-nez v2, :cond_1

    .line 3283
    const-string v2, "GraphView"

    const-string v4, "returning as histogram is off "

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3329
    :cond_0
    :goto_0
    return-void

    .line 3286
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/GraphView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 3287
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/GraphView;->mPaint:Landroid/graphics/Paint;

    .line 3288
    .local v6, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/GraphView;->mCanvas:Landroid/graphics/Canvas;

    .line 3289
    .local v1, cavas:Landroid/graphics/Canvas;
    const/high16 v17, 0x40a0

    .line 3290
    .local v17, border:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/GraphView;->mHeight:F

    const/high16 v4, 0x4120

    sub-float v18, v2, v4

    .line 3291
    .local v18, graphheight:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/GraphView;->mWidth:F

    const/high16 v4, 0x4120

    sub-float v19, v2, v4

    .line 3293
    .local v19, graphwidth:F
    const/4 v15, 0x0

    .line 3294
    .local v15, bargap:F
    const/high16 v16, 0x3f80

    .line 3296
    .local v16, barwidth:F
    const v2, -0x555556

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 3297
    const/high16 v2, -0x100

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3299
    const/16 v22, 0x0

    .local v22, k:I
    :goto_1
    move/from16 v0, v22

    int-to-float v2, v0

    const/high16 v4, 0x4200

    div-float v4, v18, v4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_2

    .line 3300
    mul-int/lit8 v2, v22, 0x20

    int-to-float v2, v2

    const/high16 v4, 0x40a0

    add-float v3, v2, v4

    .line 3301
    .local v3, y:F
    const/high16 v2, 0x40a0

    const/high16 v4, 0x40a0

    add-float v4, v4, v19

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3299
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 3303
    .end local v3           #y:F
    :cond_2
    const/16 v21, 0x0

    .local v21, j:I
    :goto_2
    move/from16 v0, v21

    int-to-float v2, v0

    const/high16 v4, 0x4200

    div-float v4, v19, v4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_3

    .line 3304
    mul-int/lit8 v2, v21, 0x20

    int-to-float v2, v2

    const/high16 v4, 0x40a0

    add-float v8, v2, v4

    .line 3305
    .local v8, x:F
    const/high16 v9, 0x40a0

    const/high16 v2, 0x40a0

    add-float v11, v18, v2

    move-object v7, v1

    move v10, v8

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3303
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 3307
    .end local v8           #x:F
    :cond_3
    const/4 v2, -0x1

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3308
    sget-object v4, Lcom/android/camera/Camera;->statsdata:[I

    monitor-enter v4

    .line 3309
    const/16 v20, 0x1

    .local v20, i:I
    :goto_3
    const/16 v2, 0x100

    move/from16 v0, v20

    if-gt v0, v2, :cond_5

    .line 3310
    :try_start_0
    sget-object v2, Lcom/android/camera/Camera;->statsdata:[I

    aget v2, v2, v20

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/GraphView;->mScale:F

    div-float/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/GraphView;->scaled:F

    .line 3311
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/GraphView;->scaled:F

    const/high16 v5, 0x4380

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_4

    .line 3312
    const/high16 v2, 0x4380

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/GraphView;->scaled:F

    .line 3313
    :cond_4
    add-int/lit8 v2, v20, 0x1

    int-to-float v2, v2

    mul-float/2addr v2, v15

    move/from16 v0, v20

    int-to-float v5, v0

    mul-float v5, v5, v16

    add-float/2addr v2, v5

    const/high16 v5, 0x40a0

    add-float v10, v2, v5

    .line 3314
    .local v10, left:F
    const/high16 v2, 0x40a0

    add-float v11, v18, v2

    .line 3315
    .local v11, top:F
    add-float v12, v10, v16

    .line 3316
    .local v12, right:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/GraphView;->scaled:F

    sub-float v13, v11, v2

    .local v13, bottom:F
    move-object v9, v1

    move-object v14, v6

    .line 3317
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3309
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 3319
    .end local v10           #left:F
    .end local v11           #top:F
    .end local v12           #right:F
    .end local v13           #bottom:F
    :cond_5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/GraphView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3323
    .end local v1           #cavas:Landroid/graphics/Canvas;
    .end local v6           #paint:Landroid/graphics/Paint;
    .end local v15           #bargap:F
    .end local v16           #barwidth:F
    .end local v17           #border:F
    .end local v18           #graphheight:F
    .end local v19           #graphwidth:F
    .end local v20           #i:I
    .end local v21           #j:I
    .end local v22           #k:I
    :cond_6
    sget-boolean v2, Lcom/android/camera/Camera;->mHiston:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/GraphView;->mCamera:Lcom/android/camera/Camera;

    if-eqz v2, :cond_0

    .line 3324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/GraphView;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCamera()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/GraphView;->mGraphCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 3325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/GraphView;->mGraphCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_0

    .line 3326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/GraphView;->mGraphCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->sendHistogramData()V

    goto/16 :goto_0

    .line 3319
    .restart local v1       #cavas:Landroid/graphics/Canvas;
    .restart local v6       #paint:Landroid/graphics/Paint;
    .restart local v15       #bargap:F
    .restart local v16       #barwidth:F
    .restart local v17       #border:F
    .restart local v18       #graphheight:F
    .restart local v19       #graphwidth:F
    .restart local v20       #i:I
    .restart local v21       #j:I
    .restart local v22       #k:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 3273
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/GraphView;->mBitmap:Landroid/graphics/Bitmap;

    .line 3274
    iget-object v0, p0, Lcom/android/camera/GraphView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/camera/GraphView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3275
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/GraphView;->mWidth:F

    .line 3276
    int-to-float v0, p2

    iput v0, p0, Lcom/android/camera/GraphView;->mHeight:F

    .line 3277
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 3278
    return-void
.end method

.method public setCameraObject(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "camera"

    .prologue
    .line 3334
    iput-object p1, p0, Lcom/android/camera/GraphView;->mCamera:Lcom/android/camera/Camera;

    .line 3335
    return-void
.end method
