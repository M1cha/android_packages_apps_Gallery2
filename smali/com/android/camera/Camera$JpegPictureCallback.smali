.class final Lcom/android/camera/Camera$JpegPictureCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 912
    iput-object p1, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 913
    iput-object p2, p0, Lcom/android/camera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 914
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 18
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 919
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-boolean v1, v1, Lcom/android/camera/Camera;->mPaused:Z

    if-eqz v1, :cond_1

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 923
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mReceivedSnapNum:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$3700(Lcom/android/camera/Camera;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/android/camera/Camera;->mReceivedSnapNum:I
    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$3702(Lcom/android/camera/Camera;I)I

    .line 924
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    #setter for: Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v1, v14, v15}, Lcom/android/camera/Camera;->access$3802(Lcom/android/camera/Camera;J)J

    .line 928
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSnapshotMode:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3900(Lcom/android/camera/Camera;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 929
    const-string v1, "camera"

    const-string v2, "In onPictureTaken , in zslmode"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 931
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "num-snaps-per-shutter"

    invoke-virtual {v2, v5}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/android/camera/Camera;->mBurstSnapNum:I
    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$4002(Lcom/android/camera/Camera;I)I

    .line 933
    :cond_2
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In onPictureTaken JpegPictureCallback, mReceivedSnapNum = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mReceivedSnapNum:I
    invoke-static {v5}, Lcom/android/camera/Camera;->access$3700(Lcom/android/camera/Camera;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In onPictureTaken JpegPictureCallback, mBurstSnapNum = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mBurstSnapNum:I
    invoke-static {v5}, Lcom/android/camera/Camera;->access$4000(Lcom/android/camera/Camera;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3500(Lcom/android/camera/Camera;)J

    move-result-wide v1

    const-wide/16 v14, 0x0

    cmp-long v1, v1, v14

    if-eqz v1, :cond_6

    .line 936
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/Camera;->access$3500(Lcom/android/camera/Camera;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mShutterCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/Camera;->access$3200(Lcom/android/camera/Camera;)J

    move-result-wide v16

    sub-long v14, v14, v16

    iput-wide v14, v1, Lcom/android/camera/Camera;->mShutterToPictureDisplayedTime:J

    .line 938
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/Camera;->access$3800(Lcom/android/camera/Camera;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/Camera;->access$3500(Lcom/android/camera/Camera;)J

    move-result-wide v16

    sub-long v14, v14, v16

    iput-wide v14, v1, Lcom/android/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    .line 946
    :goto_1
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-wide v14, v5, Lcom/android/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$800(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 950
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3100(Lcom/android/camera/Camera;)Z

    move-result v1

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSnapshotMode:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3900(Lcom/android/camera/Camera;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mReceivedSnapNum:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3700(Lcom/android/camera/Camera;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mBurstSnapNum:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$4000(Lcom/android/camera/Camera;)I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 952
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->startPreview()V
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1200(Lcom/android/camera/Camera;)V

    .line 953
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    const/4 v2, 0x1

    #calls: Lcom/android/camera/Camera;->setCameraState(I)V
    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;I)V

    .line 954
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->startFaceDetection()V

    .line 960
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3100(Lcom/android/camera/Camera;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 962
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v13

    .line 963
    .local v13, s:Landroid/hardware/Camera$Size;
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v9

    .line 965
    .local v9, orientation:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mJpegRotation:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4100(Lcom/android/camera/Camera;)I

    move-result v1

    add-int/2addr v1, v9

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_8

    .line 966
    iget v6, v13, Landroid/hardware/Camera$Size;->width:I

    .line 967
    .local v6, width:I
    iget v7, v13, Landroid/hardware/Camera$Size;->height:I

    .line 972
    .local v7, height:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$2600(Lcom/android/camera/Camera;)Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_ae_bracket_hdr_key"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    const v8, 0x7f0c0058

    invoke-virtual {v5, v8}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 975
    .local v10, hdr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    const v2, 0x7f0c0056

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    const v2, 0x7f0c0057

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 977
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mReceivedSnapNum:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3700(Lcom/android/camera/Camera;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mBurstSnapNum:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4000(Lcom/android/camera/Camera;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 982
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4200(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageNamer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera$ImageNamer;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 983
    .local v3, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4200(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageNamer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 984
    .local v4, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1900(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageSaver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget v8, v2, Lcom/android/camera/Camera;->mThumbnailViewWidth:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/android/camera/Camera$ImageSaver;->addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V

    .line 999
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #title:Ljava/lang/String;
    .end local v6           #width:I
    .end local v7           #height:I
    .end local v9           #orientation:I
    .end local v10           #hdr:Ljava/lang/String;
    .end local v13           #s:Landroid/hardware/Camera$Size;
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->checkStorage()V
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3000(Lcom/android/camera/Camera;)V

    .line 1001
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1002
    .local v11, now:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/Camera;->access$3800(Lcom/android/camera/Camera;)J

    move-result-wide v14

    sub-long v14, v11, v14

    iput-wide v14, v1, Lcom/android/camera/Camera;->mJpegCallbackFinishTime:J

    .line 1003
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mJpegCallbackFinishTime = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-wide v14, v5, Lcom/android/camera/Camera;->mJpegCallbackFinishTime:J

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mReceivedSnapNum:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3700(Lcom/android/camera/Camera;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mBurstSnapNum:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$4000(Lcom/android/camera/Camera;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1006
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    const-wide/16 v14, 0x0

    #setter for: Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v1, v14, v15}, Lcom/android/camera/Camera;->access$3802(Lcom/android/camera/Camera;J)J

    goto/16 :goto_0

    .line 941
    .end local v11           #now:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRawPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/Camera;->access$3600(Lcom/android/camera/Camera;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mShutterCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/Camera;->access$3200(Lcom/android/camera/Camera;)J

    move-result-wide v16

    sub-long v14, v14, v16

    iput-wide v14, v1, Lcom/android/camera/Camera;->mShutterToPictureDisplayedTime:J

    .line 943
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/Camera;->access$3800(Lcom/android/camera/Camera;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRawPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/Camera;->access$3600(Lcom/android/camera/Camera;)J

    move-result-wide v16

    sub-long v14, v14, v16

    iput-wide v14, v1, Lcom/android/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    .line 955
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mReceivedSnapNum:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3700(Lcom/android/camera/Camera;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mBurstSnapNum:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$4000(Lcom/android/camera/Camera;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 956
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    const/4 v2, 0x1

    #calls: Lcom/android/camera/Camera;->setCameraState(I)V
    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;I)V

    .line 957
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$800(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    goto/16 :goto_2

    .line 969
    .restart local v9       #orientation:I
    .restart local v13       #s:Landroid/hardware/Camera$Size;
    :cond_8
    iget v6, v13, Landroid/hardware/Camera$Size;->height:I

    .line 970
    .restart local v6       #width:I
    iget v7, v13, Landroid/hardware/Camera$Size;->width:I

    .restart local v7       #height:I
    goto/16 :goto_3

    .line 979
    .restart local v10       #hdr:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mReceivedSnapNum:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3700(Lcom/android/camera/Camera;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    .line 980
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4200(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageNamer;

    move-result-object v1

    #calls: Lcom/android/camera/Camera$ImageNamer;->generateUri()V
    invoke-static {v1}, Lcom/android/camera/Camera$ImageNamer;->access$4300(Lcom/android/camera/Camera$ImageNamer;)V

    goto/16 :goto_4

    .line 987
    .end local v6           #width:I
    .end local v7           #height:I
    .end local v9           #orientation:I
    .end local v10           #hdr:Ljava/lang/String;
    .end local v13           #s:Landroid/hardware/Camera$Size;
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p1

    #setter for: Lcom/android/camera/Camera;->mJpegImageData:[B
    invoke-static {v1, v0}, Lcom/android/camera/Camera;->access$4402(Lcom/android/camera/Camera;[B)[B

    .line 988
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mQuickCapture:Z
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4500(Lcom/android/camera/Camera;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 989
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->showPostCaptureAlert()V
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4600(Lcom/android/camera/Camera;)V

    goto/16 :goto_5

    .line 991
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->doAttach()V
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4700(Lcom/android/camera/Camera;)V

    goto/16 :goto_5
.end method
