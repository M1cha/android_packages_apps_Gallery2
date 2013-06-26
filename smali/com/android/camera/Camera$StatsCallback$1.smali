.class Lcom/android/camera/Camera$StatsCallback$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera$StatsCallback;->onCameraData([ILandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/Camera$StatsCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera$StatsCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 879
    iput-object p1, p0, Lcom/android/camera/Camera$StatsCallback$1;->this$1:Lcom/android/camera/Camera$StatsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/camera/Camera$StatsCallback$1;->this$1:Lcom/android/camera/Camera$StatsCallback;

    iget-object v0, v0, Lcom/android/camera/Camera$StatsCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGraphView:Lcom/android/camera/GraphView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)Lcom/android/camera/GraphView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/android/camera/Camera$StatsCallback$1;->this$1:Lcom/android/camera/Camera$StatsCallback;

    iget-object v0, v0, Lcom/android/camera/Camera$StatsCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGraphView:Lcom/android/camera/GraphView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)Lcom/android/camera/GraphView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/GraphView;->PreviewChanged()V

    .line 883
    :cond_0
    return-void
.end method
