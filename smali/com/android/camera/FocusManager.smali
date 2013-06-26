.class public Lcom/android/camera/FocusManager;
.super Ljava/lang/Object;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/FocusManager$MainHandler;,
        Lcom/android/camera/FocusManager$Listener;
    }
.end annotation


# instance fields
.field private mAeAwbLock:Z

.field private mDefaultFocusModes:[Ljava/lang/String;

.field private mDisplayOrientation:I

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Landroid/view/View;

.field private mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

.field private mFocusMode:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field mListener:Lcom/android/camera/FocusManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mMirror:Z

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mState:I

.field private mZslEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/view/View;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;)V
    .locals 1
    .parameter "preferences"
    .parameter "defaultFocusModes"
    .parameter "focusIndicatorRotate"
    .parameter "parameters"
    .parameter "listener"
    .parameter "mirror"
    .parameter "looper"

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v0, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 101
    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mZslEnabled:Z

    .line 138
    new-instance v0, Lcom/android/camera/FocusManager$MainHandler;

    invoke-direct {v0, p0, p7}, Lcom/android/camera/FocusManager$MainHandler;-><init>(Lcom/android/camera/FocusManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    .line 139
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    .line 141
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 142
    iput-object p2, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    .line 143
    invoke-virtual {p0, p3}, Lcom/android/camera/FocusManager;->setFocusAreaIndicator(Landroid/view/View;)V

    .line 144
    invoke-virtual {p0, p4}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 145
    iput-object p5, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    .line 146
    invoke-virtual {p0, p6}, Lcom/android/camera/FocusManager;->setMirror(Z)V

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/FocusManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    return-void
.end method

.method private autoFocus()V
    .locals 2

    .prologue
    .line 394
    const-string v0, "FocusManager"

    const-string v1, "Start autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->autoFocus()V

    .line 396
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 399
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 401
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 402
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 405
    const-string v0, "FocusManager"

    const-string v1, "Cancel autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 411
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->cancelAutoFocus()V

    .line 412
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 413
    :cond_0
    iput v2, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 414
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 415
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 416
    return-void
.end method

.method private capture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 419
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iput v1, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 421
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 423
    :cond_0
    return-void
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 557
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private needAutoFocusCall()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 561
    iget-boolean v2, p0, Lcom/android/camera/FocusManager;->mZslEnabled:Z

    if-eqz v2, :cond_1

    .line 563
    :cond_0
    :goto_0
    return v1

    .line 562
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, focusMode:Ljava/lang/String;
    const-string v2, "infinity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "fixed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "edof"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setMatrix()V
    .locals 5

    .prologue
    .line 187
    iget v1, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    if-eqz v1, :cond_0

    .line 188
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 189
    .local v0, matrix:Landroid/graphics/Matrix;
    iget-boolean v1, p0, Lcom/android/camera/FocusManager;->mMirror:Z

    iget v2, p0, Lcom/android/camera/FocusManager;->mDisplayOrientation:I

    iget v3, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v4, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 194
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 195
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    .line 197
    .end local v0           #matrix:Landroid/graphics/Matrix;
    :cond_0
    return-void
.end method


# virtual methods
.method public calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 10
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "areaMultiple"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "rect"

    .prologue
    .line 519
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 520
    .local v2, areaWidth:I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 521
    .local v1, areaHeight:I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->clamp(III)I

    move-result v3

    .line 522
    .local v3, left:I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->clamp(III)I

    move-result v5

    .line 524
    .local v5, top:I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 525
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 526
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/android/camera/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 527
    return-void
.end method

.method public doSnap()V
    .locals 2

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 242
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_0

    .line 243
    :cond_3
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 247
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/FocusManager;->mState:I

    goto :goto_0

    .line 248
    :cond_4
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_0
.end method

.method public getAeAwbLock()Z
    .locals 1

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    return v0
.end method

.method public getCurrentFocusState()I
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 6

    .prologue
    .line 426
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 458
    :goto_0
    return-object v3

    .line 427
    :cond_0
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 434
    .local v2, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_focusmode_key"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 438
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 439
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 440
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 441
    .local v1, mode:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 442
    iput-object v1, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 448
    .end local v0           #i:I
    .end local v1           #mode:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 451
    const-string v3, "auto"

    iget-object v4, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 453
    const-string v3, "auto"

    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 458
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 439
    .restart local v0       #i:I
    .restart local v1       #mode:Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 455
    .end local v0           #i:I
    .end local v1           #mode:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_2
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public isFocusCompleted()Z
    .locals 2

    .prologue
    .line 530
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusingSnapOnFinish()Z
    .locals 2

    .prologue
    .line 537
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAutoFocus(Z)V
    .locals 5
    .parameter "focused"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 258
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 262
    if-eqz p1, :cond_1

    .line 263
    iput v3, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 267
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 268
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    .line 296
    :cond_0
    :goto_1
    return-void

    .line 265
    :cond_1
    iput v4, p0, Lcom/android/camera/FocusManager;->mState:I

    goto :goto_0

    .line 269
    :cond_2
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-ne v0, v2, :cond_5

    .line 273
    if-eqz p1, :cond_4

    .line 274
    iput v3, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 278
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 280
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0, v2}, Lcom/android/camera/FocusManager$Listener;->playSound(I)V

    .line 285
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 289
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mMirror:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 283
    :cond_4
    iput v4, p0, Lcom/android/camera/FocusManager;->mState:I

    goto :goto_2

    .line 292
    :cond_5
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method public onAutoFocusMoving(Z)V
    .locals 2
    .parameter "moving"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    .line 306
    if-eqz p1, :cond_2

    .line 307
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showStart()V

    goto :goto_0

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showSuccess(Z)V

    goto :goto_0
.end method

.method public onCameraReleased()V
    .locals 0

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 391
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 380
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 384
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 386
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 387
    return-void
.end method

.method public onShutterDown()V
    .locals 2

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mZslEnabled:Z

    if-nez v0, :cond_2

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 205
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    .line 208
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->autoFocus()V

    goto :goto_0
.end method

.method public onShutterUp()V
    .locals 2

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 223
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    .line 229
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 231
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    goto :goto_0
.end method

.method public onSingleTapUp(II)V
    .locals 14
    .parameter "x"
    .parameter "y"

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 319
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_touchaec_key"

    const-string v4, "touch-off"

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 327
    .local v13, touchaec:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->getWidth()I

    move-result v1

    .line 328
    .local v1, focusWidth:I
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->getHeight()I

    move-result v2

    .line 329
    .local v2, focusHeight:I
    iget v6, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    .line 330
    .local v6, previewWidth:I
    iget v7, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    .line 331
    .local v7, previewHeight:I
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_4

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 333
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    const-string v0, "touch-on"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 337
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_4
    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 347
    const-string v0, "touch-on"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 348
    const/high16 v3, 0x3fc0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 353
    :cond_5
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 355
    .local v10, p:Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v0, v1, 0x2

    sub-int v0, p1, v0

    const/4 v3, 0x0

    sub-int v4, v6, v1

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result v9

    .line 356
    .local v9, left:I
    div-int/lit8 v0, v2, 0x2

    sub-int v0, p2, v0

    const/4 v3, 0x0

    sub-int v4, v7, v2

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result v12

    .line 357
    .local v12, top:I
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10, v9, v12, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 359
    invoke-virtual {v10}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v11

    .line 360
    .local v11, rules:[I
    const/16 v0, 0xd

    const/4 v3, 0x0

    aput v3, v11, v0

    .line 361
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->requestLayout()V

    .line 364
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->stopFaceDetection()V

    .line 367
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    .line 368
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_6

    .line 369
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->autoFocus()V

    goto/16 :goto_0

    .line 371
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 373
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 374
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 546
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 542
    return-void
.end method

.method public resetTouchFocus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 503
    iget-boolean v2, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v2, :cond_0

    .line 515
    :goto_0
    return-void

    .line 506
    :cond_0
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 508
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 509
    .local v1, rules:[I
    const/16 v2, 0xd

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 510
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 511
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->clear()V

    .line 513
    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 514
    iput-object v5, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    goto :goto_0
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 549
    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 550
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .parameter "displayOrientation"

    .prologue
    .line 178
    iput p1, p0, Lcom/android/camera/FocusManager;->mDisplayOrientation:I

    .line 179
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->setMatrix()V

    .line 180
    return-void
.end method

.method public setFaceView(Lcom/android/camera/ui/FaceView;)V
    .locals 0
    .parameter "faceView"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 184
    return-void
.end method

.method public setFocusAreaIndicator(Landroid/view/View;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 131
    move-object v0, p1

    check-cast v0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    .line 132
    const v0, 0x7f0b0023

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicator:Landroid/view/View;

    .line 133
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .parameter "mirror"

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mMirror:Z

    .line 174
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->setMatrix()V

    .line 175
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "parameters"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 150
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 151
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "auto"

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    .line 154
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mLockAeAwbNeeded:Z

    .line 156
    return-void

    :cond_2
    move v0, v2

    .line 151
    goto :goto_0
.end method

.method public setPreviewSize(II)V
    .locals 4
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 159
    iget v2, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    if-eq v2, p2, :cond_1

    .line 160
    :cond_0
    iput p1, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    .line 161
    iput p2, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    .line 162
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->setMatrix()V

    .line 165
    iget v2, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v3, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v1, v2, 0x4

    .line 166
    .local v1, len:I
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusIndicator:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 167
    .local v0, layout:Landroid/view/ViewGroup$LayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 168
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 170
    .end local v0           #layout:Landroid/view/ViewGroup$LayoutParams;
    .end local v1           #len:I
    :cond_1
    return-void
.end method

.method public setZslEnable(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 568
    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mZslEnabled:Z

    .line 569
    return-void
.end method

.method public updateFocusUI()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 470
    iget-boolean v5, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v5, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v5}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    .line 474
    .local v0, faceExists:Z
    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 476
    .local v1, focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :goto_2
    iget v5, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v5, :cond_5

    .line 477
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v3, :cond_4

    .line 478
    invoke-interface {v1}, Lcom/android/camera/ui/FocusIndicator;->clear()V

    goto :goto_0

    .end local v0           #faceExists:Z
    .end local v1           #focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :cond_2
    move v0, v4

    .line 473
    goto :goto_1

    .line 474
    .restart local v0       #faceExists:Z
    :cond_3
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    goto :goto_2

    .line 483
    .restart local v1       #focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :cond_4
    invoke-interface {v1}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 485
    :cond_5
    iget v5, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eq v5, v3, :cond_6

    iget v3, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_7

    .line 486
    :cond_6
    invoke-interface {v1}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 488
    :cond_7
    const-string v3, "continuous-picture"

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 490
    invoke-interface {v1, v4}, Lcom/android/camera/ui/FocusIndicator;->showSuccess(Z)V

    goto :goto_0

    .line 491
    :cond_8
    iget v3, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_9

    .line 492
    invoke-interface {v1, v4}, Lcom/android/camera/ui/FocusIndicator;->showSuccess(Z)V

    goto :goto_0

    .line 493
    :cond_9
    iget-boolean v3, p0, Lcom/android/camera/FocusManager;->mMirror:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 494
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_scenemode_key"

    const-string v6, "off"

    invoke-virtual {v3, v5, v6}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, sceneMode:Ljava/lang/String;
    const-string v3, "landscape"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 496
    invoke-interface {v1, v4}, Lcom/android/camera/ui/FocusIndicator;->showFail(Z)V

    goto :goto_0
.end method
