.class Lcom/android/camera/VideoCamera$MainHandler;
.super Landroid/os/Handler;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera$MainHandler;-><init>(Lcom/android/camera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 343
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 398
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 346
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$100(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ShutterButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    goto :goto_0

    .line 350
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 356
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    #calls: Lcom/android/camera/VideoCamera;->updateRecordingTime()V
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$200(Lcom/android/camera/VideoCamera;)V

    goto :goto_0

    .line 366
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mDisplayRotation:I
    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$300(Lcom/android/camera/VideoCamera;)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$400(Lcom/android/camera/VideoCamera;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$500(Lcom/android/camera/VideoCamera;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    #calls: Lcom/android/camera/VideoCamera;->startPreview()V
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$600(Lcom/android/camera/VideoCamera;)V

    .line 370
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mOnResumeTime:J
    invoke-static {v2}, Lcom/android/camera/VideoCamera;->access$700(Lcom/android/camera/VideoCamera;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$800(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 377
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    #calls: Lcom/android/camera/VideoCamera;->showTapToSnapshotToast()V
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$900(Lcom/android/camera/VideoCamera;)V

    goto :goto_0

    .line 382
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    #calls: Lcom/android/camera/VideoCamera;->switchCamera()V
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$1000(Lcom/android/camera/VideoCamera;)V

    goto :goto_0

    .line 387
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSwitchCamera()V

    .line 390
    iget-object v0, p0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z
    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->access$502(Lcom/android/camera/VideoCamera;Z)Z

    goto :goto_0

    .line 395
    :pswitch_7
    iget-object v0, p0, Lcom/android/camera/VideoCamera$MainHandler;->this$0:Lcom/android/camera/VideoCamera;

    iget v1, p1, Landroid/os/Message;->what:I

    #calls: Lcom/android/camera/VideoCamera;->showUserMsg(I)V
    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->access$1100(Lcom/android/camera/VideoCamera;I)V

    goto :goto_0

    .line 343
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
