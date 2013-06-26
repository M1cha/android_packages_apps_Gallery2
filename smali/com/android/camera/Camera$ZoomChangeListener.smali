.class Lcom/android/camera/Camera$ZoomChangeListener;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/camera/Camera$ZoomChangeListener;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 626
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$ZoomChangeListener;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onZoomValueChanged(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomChangeListener;->this$0:Lcom/android/camera/Camera;

    iget-boolean v0, v0, Lcom/android/camera/Camera;->mPaused:Z

    if-eqz v0, :cond_0

    .line 636
    :goto_0
    return-void

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomChangeListener;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mZoomValue:I
    invoke-static {v0, p1}, Lcom/android/camera/Camera;->access$2802(Lcom/android/camera/Camera;I)I

    .line 634
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomChangeListener;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/Camera$ZoomChangeListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mZoomValue:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 635
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomChangeListener;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera$ZoomChangeListener;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method
