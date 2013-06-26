.class public Lcom/android/camera/CameraManager$CameraProxy;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraManager;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraManager;)V
    .locals 1
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {p1}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/camera/Util;->Assert(Z)V

    .line 258
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/android/camera/CameraManager$CameraProxy;-><init>(Lcom/android/camera/CameraManager;)V

    return-void
.end method


# virtual methods
.method public autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 325
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 326
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 327
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 331
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 332
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 333
    return-void
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 405
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 406
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 407
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public lock()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 287
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 288
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 289
    return-void
.end method

.method public reconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 272
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 273
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 274
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$200(Lcom/android/camera/CameraManager;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$200(Lcom/android/camera/CameraManager;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 277
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 266
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 267
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 268
    return-void
.end method

.method public sendHistogramData()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 430
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 431
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 432
    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 337
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 338
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 339
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 3
    .parameter "degrees"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 357
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 359
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 360
    return-void
.end method

.method public setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 388
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 389
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 390
    return-void
.end method

.method public setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 370
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 371
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 372
    return-void
.end method

.method public setHistogramMode(Landroid/hardware/Camera$CameraDataCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 424
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 425
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 426
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 394
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 395
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 396
    return-void
.end method

.method public setParametersAsync(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "params"

    .prologue
    const/16 v1, 0x15

    .line 399
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 401
    return-void
.end method

.method public setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 313
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 314
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 315
    return-void
.end method

.method public setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 307
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 308
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 309
    return-void
.end method

.method public setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surfaceTexture"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 293
    return-void
.end method

.method public setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 364
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 365
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 366
    return-void
.end method

.method public startFaceDetection()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 376
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 377
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 378
    return-void
.end method

.method public startPreviewAsync()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 297
    return-void
.end method

.method public stopFaceDetection()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 382
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 383
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 384
    return-void
.end method

.method public stopPreview()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 301
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 302
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 303
    return-void
.end method

.method public takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 7
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 345
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/android/camera/CameraManager$CameraProxy$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/CameraManager$CameraProxy$1;-><init>(Lcom/android/camera/CameraManager$CameraProxy;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 352
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 353
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 281
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 282
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 283
    return-void
.end method
