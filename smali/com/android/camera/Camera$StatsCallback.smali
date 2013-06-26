.class final Lcom/android/camera/Camera$StatsCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$CameraDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StatsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 867
    iput-object p1, p0, Lcom/android/camera/Camera$StatsCallback;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 867
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$StatsCallback;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onCameraData([ILandroid/hardware/Camera;)V
    .locals 5
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 872
    sget-boolean v0, Lcom/android/camera/Camera;->mHiston:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$StatsCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFirstTimeInitialized:Z
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3300(Lcom/android/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    sget-object v1, Lcom/android/camera/Camera;->statsdata:[I

    monitor-enter v1

    .line 877
    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lcom/android/camera/Camera;->statsdata:[I

    const/4 v3, 0x0

    const/16 v4, 0x101

    invoke-static {p1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 878
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    iget-object v0, p0, Lcom/android/camera/Camera$StatsCallback;->this$0:Lcom/android/camera/Camera;

    new-instance v1, Lcom/android/camera/Camera$StatsCallback$1;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$StatsCallback$1;-><init>(Lcom/android/camera/Camera$StatsCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 878
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
