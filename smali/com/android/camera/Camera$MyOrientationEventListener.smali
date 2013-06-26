.class Lcom/android/camera/Camera$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1581
    iput-object p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    .line 1582
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 1583
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 6
    .parameter "orientation"

    .prologue
    const/4 v5, 0x6

    .line 1591
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientation:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$5700(Lcom/android/camera/Camera;)I

    move-result v0

    .line 1592
    .local v0, oldOrientation:I
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 1612
    :cond_0
    :goto_0
    return-void

    .line 1593
    :cond_1
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientation:I
    invoke-static {v3}, Lcom/android/camera/Camera;->access$5700(Lcom/android/camera/Camera;)I

    move-result v3

    invoke-static {p1, v3}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v3

    #setter for: Lcom/android/camera/Camera;->mOrientation:I
    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$5702(Lcom/android/camera/Camera;I)I

    .line 1594
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientation:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$5700(Lcom/android/camera/Camera;)I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 1595
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientation:I
    invoke-static {v3}, Lcom/android/camera/Camera;->access$5700(Lcom/android/camera/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setOrientation(I)V

    .line 1596
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget-object v3, v3, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1600
    :cond_2
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientation:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$5700(Lcom/android/camera/Camera;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v3}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    add-int/2addr v2, v3

    rem-int/lit16 v1, v2, 0x168

    .line 1602
    .local v1, orientationCompensation:I
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$5800(Lcom/android/camera/Camera;)I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 1603
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mOrientationCompensation:I
    invoke-static {v2, v1}, Lcom/android/camera/Camera;->access$5802(Lcom/android/camera/Camera;I)I

    .line 1604
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientationCompensation:I
    invoke-static {v3}, Lcom/android/camera/Camera;->access$5800(Lcom/android/camera/Camera;)I

    move-result v3

    const/4 v4, 0x1

    #calls: Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V
    invoke-static {v2, v3, v4}, Lcom/android/camera/Camera;->access$5900(Lcom/android/camera/Camera;IZ)V

    .line 1608
    :cond_3
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$1100(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1609
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$1100(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1610
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->showTapToFocusToast()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)V

    goto :goto_0
.end method
