.class Lcom/android/camera/Camera$6;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->capture()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGraphView:Lcom/android/camera/GraphView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)Lcom/android/camera/GraphView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGraphView:Lcom/android/camera/GraphView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)Lcom/android/camera/GraphView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/GraphView;->setVisibility(I)V

    .line 1402
    :cond_0
    return-void
.end method
