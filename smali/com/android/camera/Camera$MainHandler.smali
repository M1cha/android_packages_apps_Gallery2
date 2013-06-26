.class Lcom/android/camera/Camera$MainHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$MainHandler;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 395
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 397
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 403
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->initializeFirstTime()V
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1400(Lcom/android/camera/Camera;)V

    goto :goto_0

    .line 408
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    const/4 v2, 0x0

    #calls: Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V
    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;I)V

    goto :goto_0

    .line 418
    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mDisplayRotation:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$1600(Lcom/android/camera/Camera;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 419
    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setDisplayOrientation()V
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1700(Lcom/android/camera/Camera;)V

    .line 421
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOnResumeTime:J
    invoke-static {v3}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1100(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 428
    :pswitch_4
    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->showTapToFocusToast()V
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)V

    goto :goto_0

    .line 433
    :pswitch_5
    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1900(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageSaver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera$ImageSaver;->updateThumbnail()V

    goto :goto_0

    .line 438
    :pswitch_6
    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->switchCamera()V
    invoke-static {v1}, Lcom/android/camera/Camera;->access$2000(Lcom/android/camera/Camera;)V

    goto :goto_0

    .line 443
    :pswitch_7
    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->animateSwitchCamera()V

    goto :goto_0

    .line 448
    :pswitch_8
    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->initializeAfterCameraOpen()V
    invoke-static {v1}, Lcom/android/camera/Camera;->access$2100(Lcom/android/camera/Camera;)V

    goto :goto_0

    .line 453
    :pswitch_9
    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iput-object v2, v1, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 454
    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setCameraState(I)V
    invoke-static {v1, v4}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;I)V

    .line 455
    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->startFaceDetection()V

    goto :goto_0

    .line 460
    :pswitch_a
    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iput-object v2, v1, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 461
    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iput-boolean v4, v1, Lcom/android/camera/Camera;->mOpenCameraFail:Z

    .line 462
    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    const v2, 0x7f0c00fe

    invoke-static {v1, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 468
    :pswitch_b
    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iput-object v2, v1, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 469
    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iput-boolean v4, v1, Lcom/android/camera/Camera;->mCameraDisabled:Z

    .line 470
    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    const v2, 0x7f0c00ff

    invoke-static {v1, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 475
    :pswitch_c
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "yyan set tone bar: mSceneMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$2300(Lcom/android/camera/Camera;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setSkinToneFactor()V
    invoke-static {v1}, Lcom/android/camera/Camera;->access$2400(Lcom/android/camera/Camera;)V

    .line 477
    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mSeekBarInitialized:Z
    invoke-static {v1, v4}, Lcom/android/camera/Camera;->access$2502(Lcom/android/camera/Camera;Z)Z

    .line 480
    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$2600(Lcom/android/camera/Camera;)Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_coloreffect_key"

    iget-object v3, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    const v4, 0x7f0c0089

    invoke-virtual {v3, v4}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, colorEffect:Ljava/lang/String;
    const-string v1, "party"

    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2300(Lcom/android/camera/Camera;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "portrait"

    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2300(Lcom/android/camera/Camera;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 489
    :cond_3
    const-string v1, "camera"

    const-string v2, "yyan Skin tone bar: disable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->disableSkinToneSeekBar()V
    invoke-static {v1}, Lcom/android/camera/Camera;->access$2700(Lcom/android/camera/Camera;)V

    goto/16 :goto_0

    .line 395
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
