.class final Lcom/android/camera/VideoCamera$JpegPictureCallback;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/VideoCamera;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 2971
    iput-object p1, p0, Lcom/android/camera/VideoCamera$JpegPictureCallback;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2972
    iput-object p2, p0, Lcom/android/camera/VideoCamera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 2973
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    const/4 v2, 0x0

    .line 2977
    const-string v0, "videocamera"

    const-string v1, "onPictureTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    iget-object v0, p0, Lcom/android/camera/VideoCamera$JpegPictureCallback;->this$0:Lcom/android/camera/VideoCamera;

    #setter for: Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z
    invoke-static {v0, v2}, Lcom/android/camera/VideoCamera;->access$2502(Lcom/android/camera/VideoCamera;Z)Z

    .line 2979
    iget-object v0, p0, Lcom/android/camera/VideoCamera$JpegPictureCallback;->this$0:Lcom/android/camera/VideoCamera;

    invoke-virtual {v0, v2}, Lcom/android/camera/VideoCamera;->showVideoSnapshotUI(Z)V

    .line 2980
    iget-object v0, p0, Lcom/android/camera/VideoCamera$JpegPictureCallback;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v1, p0, Lcom/android/camera/VideoCamera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    #calls: Lcom/android/camera/VideoCamera;->storeImage([BLandroid/location/Location;)V
    invoke-static {v0, p1, v1}, Lcom/android/camera/VideoCamera;->access$2600(Lcom/android/camera/VideoCamera;[BLandroid/location/Location;)V

    .line 2981
    return-void
.end method
