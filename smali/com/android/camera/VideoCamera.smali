.class public Lcom/android/camera/VideoCamera;
.super Lcom/android/camera/ActivityBase;
.source "VideoCamera.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/camera/EffectsRecorder$EffectsListener;
.implements Lcom/android/camera/ModePicker$OnModeChangeListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VideoCamera$VideoNamer;,
        Lcom/android/camera/VideoCamera$JpegPictureCallback;,
        Lcom/android/camera/VideoCamera$ZoomChangeListener;,
        Lcom/android/camera/VideoCamera$MyOrientationEventListener;,
        Lcom/android/camera/VideoCamera$MyBroadcastReceiver;,
        Lcom/android/camera/VideoCamera$MainHandler;,
        Lcom/android/camera/VideoCamera$DefaultHashMap;
    }
.end annotation


# static fields
.field private static final AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoCamera$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoCamera$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoCamera$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TIME_LAPSE_VIDEO_QUALITY:[I

.field private static final VIDEOQUALITY_BITRATE_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoCamera$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoCamera$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIDEO_QUALITY:[I


# instance fields
.field final OTHER_SETTING_KEYS:[Ljava/lang/String;

.field final QCOM_SETTING_KEYS:[Ljava/lang/String;

.field private mAudioEncoder:I

.field private mBgLearningMessageFrame:Landroid/view/View;

.field private mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

.field private mCameraDisplayOrientation:I

.field private mCaptureAnimView:Landroid/widget/ImageView;

.field private mCaptureTimeLapse:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mDisplayRotation:I

.field private mEffectParameter:Ljava/lang/Object;

.field private mEffectType:I

.field private mEffectUriFromGallery:Ljava/lang/String;

.field private mEffectsDisplayResult:Z

.field private mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

.field private final mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mHfr:Z

.field private mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

.field private mIsVideoCaptureIntent:Z

.field private mLabelsLinearLayout:Landroid/widget/LinearLayout;

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecording:Z

.field private mModePicker:Lcom/android/camera/ModePicker;

.field private mOnResumeTime:J

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationCompensationAtRecordStart:I

.field private mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

.field private mPrefVideoEffectDefault:Ljava/lang/String;

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

.field mPreviewing:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mResetEffect:Z

.field private mRestartPreview:Z

.field private mRestoreFlash:Z

.field private mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewControl:Landroid/view/View;

.field private mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewImage:Landroid/widget/ImageView;

.field private mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

.field private mReviewRetakeButton:Landroid/view/View;

.field private mRotateDialog:Lcom/android/camera/RotateDialogController;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mSnapshotInProgress:Z

.field private mStorageSpace:J

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHeight:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceWidth:I

.field private mSwitchingCamera:Z

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mTimeLapseLabel:Landroid/view/View;

.field private mUnsupportedHFRVideoCodec:Z

.field private mUnsupportedHFRVideoSize:Z

.field mUnsupportedResolution:Z

.field private mVideoEncoder:I

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

.field private mVideoSnapSizeChanged:Z

.field private mZoomControl:Lcom/android/camera/ui/ZoomControl;

.field private mZoomMax:I

.field private mZoomValue:I

.field public otherSettingKeys:Ljava/util/HashMap;

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/VideoCamera;->TIME_LAPSE_VIDEO_QUALITY:[I

    .line 139
    new-array v0, v3, [I

    sput-object v0, Lcom/android/camera/VideoCamera;->VIDEO_QUALITY:[I

    .line 290
    new-instance v0, Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-direct {v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    .line 292
    new-instance v0, Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-direct {v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    .line 294
    new-instance v0, Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-direct {v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    .line 296
    new-instance v0, Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-direct {v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/VideoCamera;->VIDEOQUALITY_BITRATE_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    .line 298
    new-instance v0, Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-direct {v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/VideoCamera;->HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;

    .line 301
    sget-object v0, Lcom/android/camera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "3gp"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/android/camera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "mp4"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/android/camera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoCamera$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 305
    sget-object v0, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "h263"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "h264"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "m4v"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoCamera$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 310
    sget-object v0, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "amrnb"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "qcelp"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "evrc"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "amrwb"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "aac"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoCamera$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 320
    sget-object v0, Lcom/android/camera/VideoCamera;->HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "1280x720"

    const-string v2, "720P"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/android/camera/VideoCamera;->HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "800x480"

    const-string v2, "WVGA"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/android/camera/VideoCamera;->HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "640x480"

    const-string v2, "VGA"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/android/camera/VideoCamera;->HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "432x240"

    const-string v2, "WQVGA"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/android/camera/VideoCamera;->HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v1, "320x240"

    const-string v2, "QVGA"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    return-void

    .line 128
    nop

    :array_0
    .array-data 0x4
        0xeet 0x3t 0x0t 0x0t
        0xedt 0x3t 0x0t 0x0t
        0xect 0x3t 0x0t 0x0t
        0xebt 0x3t 0x0t 0x0t
        0xeft 0x3t 0x0t 0x0t
        0xeat 0x3t 0x0t 0x0t
        0xf0t 0x3t 0x0t 0x0t
        0xf1t 0x3t 0x0t 0x0t
        0xf2t 0x3t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 86
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 115
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pref_camera_recordlocation_key"

    aput-object v1, v0, v3

    const-string v1, "pref_camera_video_hdr_key"

    aput-object v1, v0, v5

    const-string v1, "pref_camera_hfr_key"

    aput-object v1, v0, v6

    const-string v1, "pref_camera_movie_solid_key"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->OTHER_SETTING_KEYS:[Ljava/lang/String;

    .line 120
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pref_camera_videoencoder_key"

    aput-object v1, v0, v3

    const-string v1, "pref_camera_audioencoder_key"

    aput-object v1, v0, v5

    const-string v1, "pref_camera_video_duration_key"

    aput-object v1, v0, v6

    const-string v1, "pref_camera_coloreffect_key"

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const-string v2, "pref_camera_powermode_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->QCOM_SETTING_KEYS:[Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->otherSettingKeys:Ljava/util/HashMap;

    .line 149
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    .line 153
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 191
    iput v3, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    .line 192
    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    .line 193
    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    .line 195
    iput-boolean v5, p0, Lcom/android/camera/VideoCamera;->mResetEffect:Z

    .line 198
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 200
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 220
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    .line 222
    iput v3, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 228
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    .line 240
    new-instance v0, Lcom/android/camera/VideoCamera$MainHandler;

    invoke-direct {v0, p0, v4}, Lcom/android/camera/VideoCamera$MainHandler;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    .line 244
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    .line 247
    iput v3, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    .line 254
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mHfr:Z

    .line 329
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mRestartPreview:Z

    .line 332
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mUnsupportedResolution:Z

    .line 333
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mVideoSnapSizeChanged:Z

    .line 334
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoSize:Z

    .line 335
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoCodec:Z

    .line 404
    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3068
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->switchCamera()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->showUserMsg(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/camera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput p1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/VideoCamera;)Lcom/android/camera/EffectsRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/camera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput p1, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/camera/VideoCamera;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/camera/VideoCamera;->setOrientationIndicator(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/VideoCamera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->restorePreferences()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/android/camera/VideoCamera;->mZoomValue:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/camera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput p1, p0, Lcom/android/camera/VideoCamera;->mZoomValue:I

    return p1
.end method

.method static synthetic access$2502(Lcom/android/camera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/camera/VideoCamera;[BLandroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/camera/VideoCamera;->storeImage([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/android/camera/VideoCamera;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/VideoCamera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showTapToSnapshotToast()V

    return-void
.end method

.method private addVideoToMediaStore()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1647
    const/4 v2, 0x0

    .line 1648
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_3

    .line 1649
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_size"

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1651
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    sub-long/2addr v0, v3

    .line 1652
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_2

    .line 1653
    iget-boolean v3, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v3, :cond_0

    .line 1654
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoCamera;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    .line 1656
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v4, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1661
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera$VideoNamer;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1667
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1669
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1670
    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1673
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1675
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_VIDEO"

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1685
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current video URI: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1688
    :goto_1
    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1689
    return v0

    .line 1658
    :cond_2
    const-string v3, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Video duration <= 0 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1677
    :catch_0
    move-exception v0

    .line 1680
    :try_start_1
    const-string v1, "videocamera"

    const-string v2, "failed to add video to media store"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1681
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1682
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1683
    const/4 v0, 0x1

    .line 1685
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current video URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current video URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private checkQualityAndStartPreview()V
    .locals 3

    .prologue
    .line 2823
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 2824
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->showTimeLapseUI(Z)V

    .line 2825
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2826
    .local v0, size:Landroid/hardware/Camera$Size;
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    if-eq v1, v2, :cond_1

    .line 2828
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 2831
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    .line 2832
    return-void
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1361
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1362
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1363
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty video file deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 1367
    :cond_0
    return-void
.end method

.method private clearVideoNamer()V
    .locals 1

    .prologue
    .line 3062
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    if-eqz v0, :cond_0

    .line 3063
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera$VideoNamer;->finish()V

    .line 3064
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    .line 3066
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 1

    .prologue
    .line 1189
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->closeCamera(Z)V

    .line 1190
    return-void
.end method

.method private closeCamera(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1204
    const-string v0, "videocamera"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1206
    const-string v0, "videocamera"

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :goto_0
    return-void

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_1

    .line 1213
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->disconnectCamera()V

    .line 1215
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeEffects()V

    .line 1216
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1217
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1218
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1219
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 1220
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 1221
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    .line 1222
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    goto :goto_0
.end method

.method private closeEffects()V
    .locals 2

    .prologue
    .line 1175
    const-string v0, "videocamera"

    const-string v1, "Closing effects"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    .line 1177
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-nez v0, :cond_0

    .line 1178
    const-string v0, "videocamera"

    const-string v1, "Effects are already closed. Nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :goto_0
    return-void

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 1184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    goto :goto_0
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 3032
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 3034
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3038
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 3040
    :cond_0
    return-void

    .line 3035
    :catch_0
    move-exception v0

    .line 3036
    const-string v1, "videocamera"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private collapseCameraControls()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 542
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v1}, Lcom/android/camera/ui/IndicatorControlContainer;->dismissSettingPopup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 547
    :cond_0
    :goto_0
    return v0

    .line 546
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModePicker;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v1}, Lcom/android/camera/ModePicker;->dismissModeSelection()Z

    move-result v1

    if-nez v1, :cond_0

    .line 547
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private configVideoSnapshotSize()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 763
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->isPowerModeSupported()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 764
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v7, "pref_camera_videosnapsize_key"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 766
    .local v4, videoSnapSize:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v2

    .line 767
    .local v2, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v4, :cond_0

    .line 768
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {p0, v6}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 769
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 770
    .local v3, temp:Landroid/hardware/Camera$Size;
    const-string v6, "%dx%d"

    new-array v7, v11, [Ljava/lang/Object;

    iget v8, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    iget v8, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 772
    .end local v3           #temp:Landroid/hardware/Camera$Size;
    :cond_0
    const/16 v6, 0x78

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 773
    .local v1, index:I
    invoke-virtual {v4, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 774
    .local v5, width:I
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 776
    .local v0, height:I
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-lt v5, v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ge v0, v6, :cond_2

    .line 780
    :cond_1
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 781
    const-string v6, "%dx%d"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 784
    :cond_2
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v4, v2, v6}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    .line 787
    .end local v0           #height:I
    .end local v1           #index:I
    .end local v2           #supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v4           #videoSnapSize:Ljava/lang/String;
    .end local v5           #width:I
    :cond_3
    return-void
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 3025
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3026
    const-string v0, ".mp4"

    .line 3028
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".3gp"

    goto :goto_0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 3018
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3019
    const-string v0, "video/mp4"

    .line 3021
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 3
    .parameter "dateTaken"

    .prologue
    .line 429
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 430
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0c0151

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 433
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private deleteCurrentVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1694
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1695
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    .line 1696
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1697
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1698
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1699
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1702
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint()V

    .line 1703
    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1706
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1708
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1709
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .parameter "valid"

    .prologue
    .line 1347
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1349
    .local v1, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1350
    const/4 v0, -0x1

    .line 1351
    .local v0, resultCode:I
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1355
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/VideoCamera;->setResultEx(ILandroid/content/Intent;)V

    .line 1356
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    .line 1357
    return-void

    .line 1353
    .end local v0           #resultCode:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_0
.end method

.method private effectsActive()Z
    .locals 1

    .prologue
    .line 2674
    iget v0, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableCameraControls(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/IndicatorControlContainer;->setEnabled(Z)V

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModePicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0, p1}, Lcom/android/camera/ModePicker;->setEnabled(Z)V

    .line 555
    :cond_1
    return-void
.end method

.method private filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;
    .locals 2
    .parameter

    .prologue
    .line 1715
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1716
    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1717
    const-string v1, "pref_video_quality_key"

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 1721
    :cond_0
    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1722
    const-string v0, "pref_video_quality_key"

    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 1725
    :cond_1
    return-object p1
.end method

.method private generateVideoFilename(I)V
    .locals 9
    .parameter

    .prologue
    .line 1620
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1621
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoCamera;->createName(J)Ljava/lang/String;

    move-result-object v2

    .line 1623
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1624
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 1625
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1626
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1627
    new-instance v7, Landroid/content/ContentValues;

    const/4 v8, 0x7

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1628
    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "title"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "_display_name"

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1631
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "mime_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "resolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1637
    if-eqz v0, :cond_0

    .line 1638
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1639
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1641
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoCamera$VideoNamer;->prepareUri(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    .line 1642
    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 1643
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New video filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    return-void
.end method

.method private getCameraRotation()I
    .locals 2

    .prologue
    .line 722
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private getDesiredPreviewSize()V
    .locals 6

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 947
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    .line 949
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    .line 972
    :goto_0
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDesiredPreviewWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". mDesiredPreviewHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    return-void

    .line 951
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 952
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 953
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v0

    .line 954
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 956
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 957
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 958
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v4

    if-le v0, v2, :cond_2

    .line 959
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 962
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isSingleOutputEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 963
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v2, v0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {p0, v1, v2, v3}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 965
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    .line 966
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    goto :goto_0

    .line 968
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    .line 969
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    goto :goto_0
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .parameter "preferences"

    .prologue
    .line 437
    invoke-static {p0}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 438
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 443
    .end local v0           #intentCameraId:I
    :goto_0
    return v0

    .restart local v0       #intentCameraId:I
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private getThumbnail()V
    .locals 3

    .prologue
    .line 1898
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 1899
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/VideoCamera;->mThumbnailViewWidth:I

    invoke-static {v1, v2}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1901
    .local v0, videoFrame:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1902
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/camera/Thumbnail;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 1903
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v2}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1906
    .end local v0           #videoFrame:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 6
    .parameter "deltaMs"

    .prologue
    .line 2085
    long-to-double v2, p1

    iget v4, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 2086
    .local v0, numberOfFrames:D
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private hideAlert()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1939
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1940
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 1941
    invoke-direct {p0, v2}, Lcom/android/camera/VideoCamera;->enableCameraControls(Z)V

    .line 1943
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 1944
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 1945
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 1947
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 1948
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 1950
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_0

    .line 1951
    invoke-direct {p0, v2}, Lcom/android/camera/VideoCamera;->showTimeLapseUI(Z)V

    .line 1953
    :cond_0
    return-void
.end method

.method private initializeControlByIntent()V
    .locals 3

    .prologue
    const v2, 0x7f0b0082

    const/4 v1, 0x0

    .line 2545
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 2549
    const v0, 0x7f0b0080

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    .line 2550
    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    .line 2551
    const v0, 0x7f0b0078

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    .line 2552
    const v0, 0x7f0b0081

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewRetakeButton:Landroid/view/View;

    .line 2553
    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2558
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    instance-of v0, v0, Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v0, :cond_0

    .line 2559
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    .line 2570
    :cond_0
    :goto_0
    return-void

    .line 2562
    :cond_1
    const v0, 0x7f0b0083

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    .line 2563
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->enableFilter(Z)V

    .line 2564
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2565
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailViewWidth:I

    .line 2566
    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ModePicker;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModePicker;

    .line 2567
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0, v1}, Lcom/android/camera/ModePicker;->setVisibility(I)V

    .line 2568
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0, p0}, Lcom/android/camera/ModePicker;->setOnModeChangeListener(Lcom/android/camera/ModePicker$OnModeChangeListener;)V

    goto :goto_0
.end method

.method private initializeEffectsPreview()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 1502
    const-string v1, "videocamera"

    const-string v2, "initializeEffectsPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_0

    .line 1544
    :goto_0
    return-void

    .line 1506
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_1

    .line 1509
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    aget-object v1, v1, v2

    .line 1511
    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mEffectsDisplayResult:Z

    .line 1512
    new-instance v2, Lcom/android/camera/EffectsRecorder;

    invoke-direct {v2, p0}, Lcom/android/camera/EffectsRecorder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 1516
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v3, p0, Lcom/android/camera/VideoCamera;->mCameraDisplayOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/camera/EffectsRecorder;->setCameraDisplayOrientation(I)V

    .line 1517
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/EffectsRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1518
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v2, v1}, Lcom/android/camera/EffectsRecorder;->setCameraFacing(I)V

    .line 1519
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v1, v2}, Lcom/android/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1520
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, p0}, Lcom/android/camera/EffectsRecorder;->setEffectsListener(Lcom/android/camera/EffectsRecorder$EffectsListener;)V

    .line 1521
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, p0}, Lcom/android/camera/EffectsRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1522
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, p0}, Lcom/android/camera/EffectsRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1529
    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1530
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    .line 1532
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, v0}, Lcom/android/camera/EffectsRecorder;->setOrientationHint(I)V

    .line 1534
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensationAtRecordStart:I

    .line 1536
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/camera/VideoCamera;->mSurfaceWidth:I

    iget v3, p0, Lcom/android/camera/VideoCamera;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/EffectsRecorder;->setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 1538
    iget v0, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "gallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1540
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1542
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private initializeEffectsRecording()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    .line 1547
    const-string v0, "videocamera"

    const-string v1, "initializeEffectsRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1550
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1553
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeVideoFileDescriptor()V

    .line 1554
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1555
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1556
    if-eqz v0, :cond_0

    .line 1558
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "rw"

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1560
    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1566
    :cond_0
    :goto_0
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1569
    :goto_1
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v4, v5}, Lcom/android/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1573
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v4, :cond_1

    .line 1574
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    const-wide v5, 0x408f400000000000L

    iget v7, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/EffectsRecorder;->setCaptureRate(D)V

    .line 1580
    :goto_2
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_2

    .line 1581
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/EffectsRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1588
    :goto_3
    iget-wide v4, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    const-wide/32 v6, 0x2faf080

    sub-long/2addr v4, v6

    .line 1589
    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    cmp-long v2, v0, v4

    if-gez v2, :cond_3

    .line 1592
    :goto_4
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/EffectsRecorder;->setMaxFileSize(J)V

    .line 1593
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    invoke-virtual {v0, v1}, Lcom/android/camera/EffectsRecorder;->setMaxDuration(I)V

    .line 1594
    return-void

    .line 1561
    :catch_0
    move-exception v0

    .line 1563
    const-string v4, "videocamera"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1576
    :cond_1
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/EffectsRecorder;->setCaptureRate(D)V

    goto :goto_2

    .line 1583
    :cond_2
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v4}, Lcom/android/camera/VideoCamera;->generateVideoFilename(I)V

    .line 1584
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/camera/EffectsRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-wide v0, v4

    goto :goto_4

    :cond_4
    move-wide v0, v2

    goto :goto_1
.end method

.method private initializeIndicatorControl()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 558
    const v0, 0x7f0b0010

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/IndicatorControlContainer;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    .line 560
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-nez v0, :cond_1

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->loadCameraPreferences()V

    .line 563
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "pref_camera_video_flashmode_key"

    aput-object v0, v4, v6

    const-string v0, "pref_camera_whitebalance_key"

    aput-object v0, v4, v7

    const-string v0, "pref_video_effect_key"

    aput-object v0, v4, v8

    const/4 v0, 0x3

    const-string v1, "pref_video_time_lapse_frame_interval_key"

    aput-object v1, v4, v0

    const-string v0, "pref_video_quality_key"

    aput-object v0, v4, v9

    .line 570
    .local v4, SETTING_KEYS:[Ljava/lang/String;
    const v0, 0x7f020073

    invoke-static {v0}, Lcom/android/camera/ui/CameraPicker;->setImageResourceId(I)V

    .line 571
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->otherSettingKeys:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->OTHER_SETTING_KEYS:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->otherSettingKeys:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->QCOM_SETTING_KEYS:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v3

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->otherSettingKeys:Ljava/util/HashMap;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/IndicatorControlContainer;->initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Z[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 575
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/IndicatorControlContainer;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 576
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    const v1, 0x7f0b0002

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorControlContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraPicker;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    .line 579
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "pref_video_quality_key"

    aput-object v2, v1, v6

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorControlContainer;->overrideSettings([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initializeMiscControls()V
    .locals 2

    .prologue
    .line 2573
    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    .line 2574
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewFrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2575
    const v0, 0x7f0b0077

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    .line 2577
    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 2578
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setBackgroundResource(I)V

    .line 2579
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 2580
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    .line 2588
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2589
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 2592
    :cond_0
    const v0, 0x7f0b008e

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    .line 2593
    const v0, 0x7f0b0075

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    .line 2594
    const v0, 0x7f0b008f

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mTimeLapseLabel:Landroid/view/View;

    .line 2597
    const v0, 0x7f0b0076

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    .line 2599
    const v0, 0x7f0b000d

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

    .line 2600
    const v0, 0x7f0b000c

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    .line 2601
    const v0, 0x7f0b0063

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCaptureAnimView:Landroid/widget/ImageView;

    .line 2602
    return-void
.end method

.method private initializeRecorder()V
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    const/16 v8, 0x500

    const/16 v7, 0x2d0

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 1371
    const-string v0, "videocamera"

    const-string v1, "initializeRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1499
    :goto_0
    return-void

    .line 1375
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 1376
    const-string v0, "videocamera"

    const-string v1, "SurfaceTexture is null. Wait for surface changed."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1380
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1381
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1383
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    .line 1384
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    .line 1385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mUnsupportedResolution:Z

    .line 1387
    iget v0, p0, Lcom/android/camera/VideoCamera;->mVideoEncoder:I

    if-ne v0, v9, :cond_2

    .line 1388
    iget v0, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    if-lt v0, v8, :cond_2

    iget v0, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    if-lt v0, v7, :cond_2

    .line 1389
    iput-boolean v9, p0, Lcom/android/camera/VideoCamera;->mUnsupportedResolution:Z

    .line 1390
    const v0, 0x7f0c004f

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1397
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeVideoFileDescriptor()V

    .line 1398
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    .line 1399
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1400
    if-eqz v0, :cond_3

    .line 1402
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "rw"

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1404
    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1410
    :cond_3
    :goto_1
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1412
    :goto_2
    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1415
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v4}, Lcom/android/camera/CameraManager$CameraProxy;->unlock()V

    .line 1416
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v5}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1417
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getVideoHighFrameRate()Ljava/lang/String;

    move-result-object v4

    .line 1418
    iget-boolean v5, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-nez v5, :cond_8

    if-eqz v4, :cond_4

    const-string v5, "off"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1419
    :cond_4
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1420
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, p0, Lcom/android/camera/VideoCamera;->mAudioEncoder:I

    iput v6, v5, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 1424
    :goto_3
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v9}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1426
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, p0, Lcom/android/camera/VideoCamera;->mVideoEncoder:I

    iput v6, v5, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 1427
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    iput v6, v5, Landroid/media/CamcorderProfile;->duration:I

    .line 1429
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1430
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v6, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1431
    if-eqz v4, :cond_5

    const-string v5, "off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget v4, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    if-ne v4, v8, :cond_5

    iget v4, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    if-ne v4, v7, :cond_5

    .line 1432
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v5, 0x3d0900

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 1434
    :cond_5
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v4, :cond_6

    .line 1435
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide v5, 0x408f400000000000L

    iget v7, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1438
    :cond_6
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v4}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 1439
    if-eqz v4, :cond_7

    .line 1440
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    double-to-float v4, v7

    invoke-virtual {v5, v6, v4}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 1448
    :cond_7
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_9

    .line 1449
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1456
    :goto_4
    iget-wide v4, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    const-wide/32 v6, 0x2faf080

    sub-long/2addr v4, v6

    .line 1457
    cmp-long v2, v0, v2

    if-lez v2, :cond_c

    cmp-long v2, v0, v4

    if-gez v2, :cond_c

    .line 1462
    :goto_5
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1476
    :goto_6
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    aget-object v0, v0, v1

    .line 1477
    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    if-eq v1, v10, :cond_b

    .line 1478
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v9, :cond_a

    .line 1479
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 1486
    :goto_7
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1487
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensationAtRecordStart:I

    .line 1490
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1497
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1498
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 1405
    :catch_0
    move-exception v0

    .line 1407
    const-string v4, "videocamera"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1422
    :cond_8
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iput v10, v5, Landroid/media/CamcorderProfile;->audioCodec:I

    goto/16 :goto_3

    .line 1451
    :cond_9
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v4}, Lcom/android/camera/VideoCamera;->generateVideoFilename(I)V

    .line 1452
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_4

    .line 1481
    :cond_a
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_7

    .line 1484
    :cond_b
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    goto :goto_7

    .line 1491
    :catch_1
    move-exception v0

    .line 1492
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1493
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 1494
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1463
    :catch_2
    move-exception v0

    goto/16 :goto_6

    :cond_c
    move-wide v0, v4

    goto/16 :goto_5

    :cond_d
    move-wide v0, v2

    goto/16 :goto_2
.end method

.method private initializeVideoSnapshot()V
    .locals 4

    .prologue
    .line 2896
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_1

    .line 2897
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->setSingleTapUpListener(Landroid/view/View;)V

    .line 2899
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_video_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2902
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2907
    :cond_0
    :goto_0
    return-void

    .line 2905
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->setSingleTapUpListener(Landroid/view/View;)V

    goto :goto_0
.end method

.method private initializeZoom()V
    .locals 3

    .prologue
    .line 2884
    const v0, 0x7f0b0012

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ZoomControl;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    .line 2885
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2893
    :goto_0
    return-void

    .line 2887
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mZoomMax:I

    .line 2890
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setZoomMax(I)V

    .line 2891
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setZoomIndex(I)V

    .line 2892
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    new-instance v1, Lcom/android/camera/VideoCamera$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/VideoCamera$ZoomChangeListener;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setOnZoomChangeListener(Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;)V

    goto :goto_0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2139
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 1342
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1343
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2034
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2035
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 2027
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2028
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2029
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2030
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 4

    .prologue
    .line 534
    new-instance v0, Lcom/android/camera/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 537
    .local v0, settings:Lcom/android/camera/CameraSettings;
    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 539
    return-void
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 17
    .parameter "milliSeconds"
    .parameter "displayCentiSeconds"

    .prologue
    .line 2038
    const-wide/16 v13, 0x3e8

    div-long v10, p0, v13

    .line 2039
    .local v10, seconds:J
    const-wide/16 v13, 0x3c

    div-long v2, v10, v13

    .line 2040
    .local v2, minutes:J
    const-wide/16 v13, 0x3c

    div-long v0, v2, v13

    .line 2041
    .local v0, hours:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v0

    sub-long v6, v2, v13

    .line 2042
    .local v6, remainderMinutes:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v2

    sub-long v8, v10, v13

    .line 2044
    .local v8, remainderSeconds:J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2047
    .local v12, timeStringBuilder:Ljava/lang/StringBuilder;
    const-wide/16 v13, 0x0

    cmp-long v13, v0, v13

    if-lez v13, :cond_1

    .line 2048
    const-wide/16 v13, 0xa

    cmp-long v13, v0, v13

    if-gez v13, :cond_0

    .line 2049
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2051
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2053
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2057
    :cond_1
    const-wide/16 v13, 0xa

    cmp-long v13, v6, v13

    if-gez v13, :cond_2

    .line 2058
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2060
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2061
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2064
    const-wide/16 v13, 0xa

    cmp-long v13, v8, v13

    if-gez v13, :cond_3

    .line 2065
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2067
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2070
    if-eqz p2, :cond_5

    .line 2071
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2072
    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v10

    sub-long v13, p0, v13

    const-wide/16 v15, 0xa

    div-long v4, v13, v15

    .line 2073
    .local v4, remainderCentiSeconds:J
    const-wide/16 v13, 0xa

    cmp-long v13, v4, v13

    if-gez v13, :cond_4

    .line 2074
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2076
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2079
    .end local v4           #remainderCentiSeconds:J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private onStopVideoRecording()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 704
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mEffectsDisplayResult:Z

    .line 705
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()Z

    move-result v0

    .line 706
    .local v0, recordFail:Z
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v2, :cond_3

    .line 707
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 708
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mQuickCapture:Z

    if-eqz v2, :cond_2

    .line 709
    if-nez v0, :cond_1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    .line 719
    :cond_0
    :goto_1
    return-void

    .line 709
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 710
    :cond_2
    if-nez v0, :cond_0

    .line 711
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showAlert()V

    goto :goto_1

    .line 714
    :cond_3
    if-nez v0, :cond_0

    .line 716
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mPaused:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getCameraRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    .line 717
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getThumbnail()V

    goto :goto_1
.end method

.method private pauseAudioPlayback()V
    .locals 3

    .prologue
    .line 1760
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1761
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1763
    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1764
    return-void
.end method

.method private qcomReadVideoPreferences()V
    .locals 7

    .prologue
    const v3, 0x7f0c001f

    const/4 v6, 0x1

    .line 790
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_videoencoder_key"

    const v2, 0x7f0c0019

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 793
    sget-object v1, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-virtual {v1, v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mVideoEncoder:I

    .line 794
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video Encoder type in application="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoCamera;->mVideoEncoder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_audioencoder_key"

    const v2, 0x7f0c001b

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 799
    sget-object v1, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-virtual {v1, v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mAudioEncoder:I

    .line 800
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Encoder type in application="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoCamera;->mAudioEncoder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_video_duration_key"

    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 806
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 812
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 816
    const-string v0, "mms"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getVidoeDurationInMillis(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    .line 823
    :goto_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isPowerModeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 824
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_powermode_key"

    const v2, 0x7f0c000c

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 827
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read videopreferences power mode ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPowerMode()Ljava/lang/String;

    move-result-object v1

    .line 829
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-eqz v1, :cond_0

    .line 831
    iput-boolean v6, p0, Lcom/android/camera/VideoCamera;->mRestartPreview:Z

    .line 833
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setPowerMode(Ljava/lang/String;)V

    .line 835
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 836
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->configVideoSnapshotSize()V

    .line 838
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 839
    const-string v3, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New Video picture size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 841
    const-string v1, "Normal_Power"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-eqz v1, :cond_3

    .line 842
    const-string v0, "videocamera"

    const-string v1, "new Video size id different from old picture size , restart.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iput-boolean v6, p0, Lcom/android/camera/VideoCamera;->mVideoSnapSizeChanged:Z

    .line 850
    :cond_1
    :goto_2
    return-void

    .line 807
    :catch_0
    move-exception v0

    .line 809
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 820
    :cond_2
    const v1, 0xea60

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    goto/16 :goto_1

    .line 844
    :cond_3
    const-string v1, "Low_Power"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method

.method private qcomSetCameraParameters()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2147
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_coloreffect_key"

    const v2, 0x7f0c0089

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2150
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Color effect value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2152
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2155
    :cond_0
    iput-boolean v7, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoSize:Z

    .line 2156
    iput-boolean v7, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoCodec:Z

    .line 2159
    const-string v0, "debug.camera.yv12"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2160
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2161
    const-string v0, "videocamera"

    const-string v1, "preview format set to YV12"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const v1, 0x32315659

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 2165
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_movie_solid_key"

    const v2, 0x7f0c0067

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2168
    const-string v0, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2169
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v8}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 2175
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_antibanding_key"

    const v3, 0x7f0c0084

    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2178
    const-string v1, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "antiBanding value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2180
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 2184
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_hfr_key"

    const v3, 0x7f0c005d

    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2187
    const-string v0, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2188
    iput-boolean v8, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoSize:Z

    .line 2189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2190
    const-string v3, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current set resolution is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedHfrSizes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 2193
    if-eqz v0, :cond_3

    .line 2194
    const-string v4, "videocamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "supported hfr size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    iget v4, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v4, v5, :cond_3

    iget v4, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    if-ne v4, v0, :cond_3

    .line 2196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoSize:Z

    .line 2197
    const-string v0, "videocamera"

    const-string v3, "Current hfr resolution is supported"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2206
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoSize:Z

    if-eqz v0, :cond_5

    .line 2207
    const-string v0, "videocamera"

    const-string v3, "Unsupported hfr resolution"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2216
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    .line 2217
    iget v4, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    aget-object v0, v0, v4

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v8, :cond_a

    .line 2218
    const-string v0, "off"

    .line 2219
    const-string v1, "pref_camera_hfr_key"

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2220
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2221
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    const v2, 0x7f0c004c

    iget v3, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2222
    iput-boolean v7, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoSize:Z

    .line 2241
    :goto_2
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v1, :cond_6

    .line 2242
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v1}, Lcom/android/camera/ui/IndicatorControlContainer;->reloadPreferences()V

    .line 2245
    :cond_6
    iget v1, p0, Lcom/android/camera/VideoCamera;->mVideoEncoder:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    .line 2246
    iput-boolean v8, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoCodec:Z

    .line 2249
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedVideoHighFrameRateModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2251
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setVideoHighFrameRate(Ljava/lang/String;)V

    .line 2255
    :cond_8
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_video_hdr_key"

    const v2, 0x7f0c003f

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2258
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video HDR Setting ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedVideoHDRModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2260
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setVideoHDRMode(Ljava/lang/String;)V

    .line 2264
    :goto_4
    return-void

    .line 2171
    :cond_9
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v7}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    goto/16 :goto_0

    .line 2202
    :catch_0
    move-exception v0

    .line 2203
    const-string v0, "videocamera"

    const-string v3, "supported hfr sizes is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2223
    :cond_a
    const/16 v0, 0x780

    iget v4, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    if-ne v0, v4, :cond_b

    const/16 v0, 0x440

    iget v4, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    if-ne v0, v4, :cond_b

    .line 2224
    const-string v0, "off"

    .line 2225
    const-string v1, "pref_camera_hfr_key"

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2226
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2227
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    const v2, 0x7f0c004b

    iget v3, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2228
    iput-boolean v7, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoSize:Z

    goto/16 :goto_2

    .line 2229
    :cond_b
    const-string v0, "120"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x500

    iget v4, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    if-ne v0, v4, :cond_c

    const/16 v0, 0x2d0

    iget v4, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    if-ne v0, v4, :cond_c

    .line 2230
    const-string v0, "90"

    .line 2231
    const-string v1, "pref_camera_hfr_key"

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2232
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2233
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    const v2, 0x7f0c004a

    iget v3, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    goto/16 :goto_2

    .line 2234
    :cond_c
    const-string v0, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2235
    const-string v0, "off"

    .line 2236
    const-string v1, "pref_camera_hfr_key"

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2237
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2238
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    const v2, 0x7f0c004d

    iget v3, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2239
    iput-boolean v7, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoSize:Z

    goto/16 :goto_2

    .line 2262
    :cond_d
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setVideoHDRMode(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_e
    move-object v0, v1

    goto/16 :goto_2

    :cond_f
    move-object v0, v1

    goto/16 :goto_3
.end method

.method private readVideoPreferences()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x4

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 855
    iget v0, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0119

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/CameraSettings;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 857
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_video_quality_key"

    invoke-virtual {v4, v5, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 860
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 863
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 864
    const-string v5, "android.intent.extra.videoQuality"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 865
    const-string v0, "android.intent.extra.videoQuality"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 867
    if-lez v0, :cond_5

    move v0, v1

    .line 876
    :cond_0
    :goto_0
    const-string v5, "android.intent.extra.durationLimit"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 877
    const-string v5, "android.intent.extra.durationLimit"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 879
    mul-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    .line 885
    :goto_1
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v4

    iput v4, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    .line 886
    iget v4, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    if-eqz v4, :cond_7

    .line 887
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    .line 889
    iget v4, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-static {v4, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    .line 890
    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v5, 0x1e0

    if-le v4, v5, :cond_1

    move v0, v3

    .line 896
    :cond_1
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v4, :cond_2

    .line 897
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    new-array v5, v6, [Ljava/lang/String;

    const-string v6, "pref_video_quality_key"

    aput-object v6, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/IndicatorControlContainer;->overrideSettings([Ljava/lang/String;)V

    .line 911
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_video_time_lapse_frame_interval_key"

    const v5, 0x7f0c011e

    invoke-virtual {p0, v5}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 914
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 916
    iget v3, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v3, :cond_8

    :goto_3
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    .line 918
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v1, :cond_4

    .line 919
    add-int/lit16 v0, v0, 0x3e8

    .line 920
    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_3

    const/16 v1, 0x3ef

    if-le v0, v1, :cond_4

    .line 921
    :cond_3
    add-int/lit16 v0, v0, -0x3e8

    .line 922
    const-string v1, "0"

    .line 923
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v3}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 924
    const-string v4, "pref_video_time_lapse_frame_interval_key"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 925
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 926
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    .line 927
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v1, :cond_4

    .line 928
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v1}, Lcom/android/camera/ui/IndicatorControlContainer;->reloadPreferences()V

    .line 929
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    const v2, 0x7f0c00fb

    iget v3, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 933
    :cond_4
    iget v1, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    .line 934
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getDesiredPreviewSize()V

    .line 935
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->qcomReadVideoPreferences()V

    .line 936
    return-void

    :cond_5
    move v0, v2

    .line 870
    goto/16 :goto_0

    .line 881
    :cond_6
    iput v2, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    goto/16 :goto_1

    .line 902
    :cond_7
    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    .line 903
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v3, :cond_2

    .line 904
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "pref_video_quality_key"

    aput-object v5, v4, v2

    aput-object v7, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/IndicatorControlContainer;->overrideSettings([Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move v1, v2

    .line 916
    goto :goto_3
.end method

.method private releaseEffectsRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1609
    const-string v0, "videocamera"

    const-string v1, "Releasing effects recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 1611
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->cleanupEmptyFile()V

    .line 1612
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 1613
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 1615
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    .line 1616
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 1617
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1598
    const-string v0, "videocamera"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1600
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->cleanupEmptyFile()V

    .line 1601
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1602
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1603
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1605
    :cond_0
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 1606
    return-void
.end method

.method private resetEffect()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 3005
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mResetEffect:Z

    if-eqz v2, :cond_0

    .line 3006
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_video_effect_key"

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mPrefVideoEffectDefault:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3008
    .local v0, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPrefVideoEffectDefault:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3009
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->writeDefaultEffectToPrefs()V

    .line 3014
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return v1

    .line 3013
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mResetEffect:Z

    .line 3014
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2023
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2024
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 5

    .prologue
    .line 1017
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->setPreviewFrameLayoutOrientation()V

    .line 1018
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v1, v1

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 1020
    return-void
.end method

.method private restorePreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2658
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2659
    iput v1, p0, Lcom/android/camera/VideoCamera;->mZoomValue:I

    .line 2660
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    .line 2661
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setZoomIndex(I)V

    .line 2664
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v0, :cond_1

    .line 2665
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlContainer;->dismissSettingPopup()Z

    .line 2666
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {p0, v0, v1}, Lcom/android/camera/CameraSettings;->restorePreferences(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V

    .line 2668
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlContainer;->reloadPreferences()V

    .line 2669
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->onSharedPreferenceChanged()V

    .line 2671
    :cond_1
    return-void
.end method

.method private setCameraParameters()V
    .locals 5

    .prologue
    .line 2268
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preview dimension in App->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2270
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 2273
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    .line 2274
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    .line 2275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/camera/VideoCamera;->videoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/VideoCamera;->videoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2277
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video dimension in App->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "video-size"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2282
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mShowCameraAppView:Z

    if-eqz v0, :cond_6

    .line 2283
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_video_flashmode_key"

    const v2, 0x7f0c013a

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2289
    :goto_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 2290
    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2291
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2301
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_whitebalance_key"

    const v2, 0x7f0c013b

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2304
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2306
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2315
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2316
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2320
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 2321
    const-string v1, "continuous-video"

    invoke-static {v1, v0}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2322
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2325
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 2329
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2330
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2331
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 2342
    iget v1, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    int-to-double v1, v1

    iget v3, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2344
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2345
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2346
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 2348
    :cond_5
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video snapshot size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    iget v0, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 2354
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2357
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->qcomSetCameraParameters()V

    .line 2359
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2361
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2363
    iget v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoCamera;->updateCameraScreenNailSize(II)V

    .line 2364
    return-void

    .line 2287
    :cond_6
    const-string v0, "off"

    goto/16 :goto_0

    .line 2293
    :cond_7
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 2294
    if-nez v0, :cond_0

    .line 2295
    const v0, 0x7f0c0135

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    goto/16 :goto_1

    .line 2308
    :cond_8
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 2309
    if-nez v0, :cond_1

    .line 2310
    const-string v0, "auto"

    goto/16 :goto_2
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 1119
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDisplayRotation:I

    .line 1120
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mCameraDisplayOrientation:I

    .line 1121
    return-void
.end method

.method private setOrientationIndicator(IZ)V
    .locals 9
    .parameter "orientation"
    .parameter "animation"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 636
    const/4 v5, 0x7

    new-array v3, v5, [Lcom/android/camera/ui/Rotatable;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    aput-object v5, v3, v7

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModePicker;

    aput-object v5, v3, v8

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    aput-object v6, v3, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    aput-object v6, v3, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    aput-object v6, v3, v5

    .line 639
    .local v3, indicators:[Lcom/android/camera/ui/Rotatable;
    move-object v0, v3

    .local v0, arr$:[Lcom/android/camera/ui/Rotatable;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 640
    .local v2, indicator:Lcom/android/camera/ui/Rotatable;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 639
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 647
    .end local v2           #indicator:Lcom/android/camera/ui/Rotatable;
    :cond_1
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    instance-of v5, v5, Lcom/android/camera/ui/RotateLayout;

    if-eqz v5, :cond_2

    .line 648
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    invoke-interface {v5, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 653
    :cond_2
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_3

    .line 654
    div-int/lit8 v5, p1, 0x5a

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_4

    .line 655
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 660
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    iget v6, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    invoke-virtual {v5, v6, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 661
    return-void

    .line 657
    :cond_4
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1
.end method

.method private showAlert()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1909
    const/4 v0, 0x0

    .line 1910
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_2

    .line 1911
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v5}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1917
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1920
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    .line 1921
    .local v1, info:[Landroid/hardware/Camera$CameraInfo;
    iget v3, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    aget-object v3, v1, v3

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v2, :cond_3

    .line 1922
    .local v2, mirror:Z
    :goto_1
    iget v3, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensationAtRecordStart:I

    neg-int v3, v3

    invoke-static {v0, v3, v2}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1924
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1925
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1928
    .end local v1           #info:[Landroid/hardware/Camera$CameraInfo;
    .end local v2           #mirror:Z
    :cond_1
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 1929
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 1931
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 1932
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 1933
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 1935
    invoke-direct {p0, v4}, Lcom/android/camera/VideoCamera;->showTimeLapseUI(Z)V

    .line 1936
    return-void

    .line 1913
    :cond_2
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1914
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v5}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .restart local v1       #info:[Landroid/hardware/Camera$CameraInfo;
    :cond_3
    move v2, v4

    .line 1921
    goto :goto_1
.end method

.method private showRecordingUI(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1874
    if-eqz p1, :cond_3

    .line 1875
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlContainer;->dismissSecondLevelIndicator()V

    .line 1876
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 1877
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setBackgroundResource(I)V

    .line 1878
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1879
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1880
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1881
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_2

    .line 1882
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    iget-wide v2, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/IndicatorControlContainer;->startTimeLapseAnimation(IJ)V

    .line 1895
    :cond_2
    :goto_0
    return-void

    .line 1887
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 1888
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setBackgroundResource(I)V

    .line 1889
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1890
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1891
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_2

    .line 1892
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlContainer;->stopTimeLapseAnimation()V

    goto :goto_0
.end method

.method private showTapToSnapshotToast()V
    .locals 3

    .prologue
    .line 3043
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    const v1, 0x7f0c0170

    iget v2, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 3046
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3047
    const-string v1, "pref_video_first_use_hint_shown_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3048
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3049
    return-void
.end method

.method private showTimeLapseUI(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 2835
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mTimeLapseLabel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2836
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mTimeLapseLabel:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2838
    :cond_0
    return-void

    .line 2836
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showUserMsg(I)V
    .locals 3
    .parameter

    .prologue
    .line 3052
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 3053
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    const v1, 0x7f0c005a

    iget v2, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 3059
    :cond_0
    :goto_0
    return-void

    .line 3055
    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 3056
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    const v1, 0x7f0c005b

    iget v2, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    goto :goto_0
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 664
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 665
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v3}, Lcom/android/camera/VideoCamera;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :goto_0
    return-void

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1124
    const-string v0, "videocamera"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1136
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-ne v0, v2, :cond_0

    .line 1137
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopPreview()V

    .line 1138
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->setPreviewFrameLayoutOrientation()V

    .line 1139
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 1141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 1145
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setDisplayOrientation()V

    .line 1146
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1147
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    .line 1150
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1151
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 1152
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1164
    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    .line 1165
    return-void

    .line 1154
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceWidth:I

    .line 1155
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceHeight:I

    .line 1156
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeEffectsPreview()V

    .line 1157
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1159
    :catch_0
    move-exception v0

    .line 1160
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 1161
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview or setPreviewSurfaceTexture failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startVideoRecording()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    .line 1772
    const-string v1, "videocamera"

    const-string v2, "startVideoRecording"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->setSwipingEnabled(Z)V

    .line 1775
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint()V

    .line 1776
    iget-wide v1, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    const-wide/32 v3, 0x2faf080

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 1777
    const-string v0, "videocamera"

    const-string v1, "Storage issue, ignore the start request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    :goto_0
    return-void

    .line 1781
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoSize:Z

    if-ne v1, v0, :cond_3

    .line 1782
    const-string v1, "videocamera"

    const-string v2, "Unsupported HFR and video size combinations"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1784
    const-string v1, "Only "

    .line 1785
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedHfrSizes()Ljava/util/List;

    move-result-object v2

    .line 1786
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v8, v0

    move-object v0, v1

    move v1, v8

    :goto_1
    if-gt v1, v3, :cond_2

    .line 1787
    if-eq v1, v3, :cond_1

    .line 1788
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/camera/VideoCamera;->HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v1, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v0, v1, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1786
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1791
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " and "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/camera/VideoCamera;->HFR_SIZES:Lcom/android/camera/VideoCamera$DefaultHashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v1, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v0, v1, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/camera/VideoCamera$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1795
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " are supported when HFR is on"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1796
    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1800
    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mUnsupportedHFRVideoCodec:Z

    if-ne v1, v0, :cond_4

    .line 1801
    const-string v0, "videocamera"

    const-string v1, "Unsupported HFR and video codec combinations"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    const v0, 0x7f0c004e

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1809
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1810
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1811
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeEffectsRecording()V

    .line 1812
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-nez v1, :cond_7

    .line 1813
    const-string v0, "videocamera"

    const-string v1, "Fail to initialize effect recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1817
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeRecorder()V

    .line 1818
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mUnsupportedResolution:Z

    if-ne v1, v0, :cond_6

    .line 1819
    const-string v0, "videocamera"

    const-string v1, "Unsupported Resolution according to target"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1822
    :cond_6
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_7

    .line 1823
    const-string v0, "videocamera"

    const-string v1, "Fail to initialize media recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1828
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->pauseAudioPlayback()V

    .line 1830
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isPowerModeSupported()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1831
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v2, 0x2d0

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v2, 0x1e0

    if-eq v1, v2, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v2, 0xb0

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v2, 0x90

    if-ne v1, v2, :cond_a

    .line 1833
    :cond_9
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    const v2, 0x7f0c005c

    iget v3, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1837
    :cond_a
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1839
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1}, Lcom/android/camera/EffectsRecorder;->startRecording()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1861
    :goto_3
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1863
    invoke-direct {p0, v7}, Lcom/android/camera/VideoCamera;->enableCameraControls(Z)V

    .line 1865
    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 1866
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    .line 1867
    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->showRecordingUI(Z)V

    .line 1869
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateRecordingTime()V

    .line 1870
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOn()V

    goto/16 :goto_0

    .line 1840
    :catch_0
    move-exception v0

    .line 1841
    const-string v1, "videocamera"

    const-string v2, "Could not start effects recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1842
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseEffectsRecorder()V

    goto/16 :goto_0

    .line 1847
    :cond_b
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 1848
    :catch_1
    move-exception v0

    .line 1849
    const-string v1, "videocamera"

    const-string v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1850
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 1852
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    goto/16 :goto_0
.end method

.method private stopPreview()V
    .locals 2

    .prologue
    .line 1168
    const-string v0, "videocamera"

    const-string v1, "Guru : Stop Preview"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    .line 1171
    return-void
.end method

.method private stopVideoRecording()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1956
    const-string v0, "videocamera"

    const-string v1, "stopVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->setSwipingEnabled(Z)V

    .line 1960
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_7

    .line 1964
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1969
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->stopRecording()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1976
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1977
    const-string v1, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopVideoRecording: Setting current video filename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v2

    .line 1984
    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 1995
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mPaused:Z

    if-eqz v4, :cond_0

    .line 1998
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v4

    if-nez v4, :cond_6

    move v4, v3

    .line 1999
    :goto_2
    invoke-direct {p0, v4}, Lcom/android/camera/VideoCamera;->closeCamera(Z)V

    .line 2002
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/VideoCamera;->showRecordingUI(Z)V

    .line 2003
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v2, :cond_1

    .line 2004
    invoke-direct {p0, v3}, Lcom/android/camera/VideoCamera;->enableCameraControls(Z)V

    .line 2008
    :cond_1
    iget v2, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    invoke-direct {p0, v2, v3}, Lcom/android/camera/VideoCamera;->setOrientationIndicator(IZ)V

    .line 2009
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 2010
    if-eqz v0, :cond_2

    .line 2011
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->addVideoToMediaStore()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v3

    .line 2015
    :cond_2
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2016
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 2018
    :cond_3
    return v1

    .line 1971
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1972
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1973
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v3

    .line 1974
    goto :goto_0

    .line 1979
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 1980
    :goto_4
    const-string v4, "videocamera"

    const-string v5, "stop fail"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1981
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    :cond_5
    move v1, v3

    .line 1982
    goto :goto_1

    :cond_6
    move v4, v2

    .line 1998
    goto :goto_2

    .line 1979
    :catch_1
    move-exception v1

    goto :goto_4

    :cond_7
    move v1, v2

    goto :goto_3
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 16
    .parameter "data"
    .parameter "loc"

    .prologue
    .line 2985
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2986
    .local v3, dateTaken:J
    invoke-static {v3, v4}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v2

    .line 2987
    .local v2, title:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v6

    .line 2988
    .local v6, orientation:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 2989
    .local v12, s:Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget v8, v12, Landroid/hardware/Camera$Size;->width:I

    iget v9, v12, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v5, p2

    move-object/from16 v7, p1

    invoke-static/range {v1 .. v9}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;I[BII)Landroid/net/Uri;

    move-result-object v13

    .line 2991
    .local v13, uri:Landroid/net/Uri;
    if-eqz v13, :cond_1

    .line 2993
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-double v7, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v1

    int-to-double v14, v1

    div-double/2addr v7, v14

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v11, v7

    .line 2995
    .local v11, ratio:I
    invoke-static {v11}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v10

    .line 2996
    .local v10, inSampleSize:I
    move-object/from16 v0, p1

    invoke-static {v0, v6, v10, v13}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;)Lcom/android/camera/Thumbnail;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 2997
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v1, :cond_0

    .line 2998
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/VideoCamera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v5}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3000
    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3002
    .end local v10           #inSampleSize:I
    .end local v11           #ratio:I
    :cond_1
    return-void
.end method

.method private switchCamera()V
    .locals 2

    .prologue
    .line 2738
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2771
    :goto_0
    return-void

    .line 2740
    :cond_0
    const-string v0, "videocamera"

    const-string v1, "Start to switch camera."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    iget v0, p0, Lcom/android/camera/VideoCamera;->mPendingSwitchCameraId:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    .line 2742
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoCamera;->mPendingSwitchCameraId:I

    .line 2743
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraPicker;->setCameraId(I)V

    .line 2745
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 2748
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 2749
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 2750
    new-instance v0, Lcom/android/camera/ActivityBase$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$CameraOpenThread;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 2751
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->start()V

    .line 2753
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2757
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 2758
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    .line 2759
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeVideoSnapshot()V

    .line 2760
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->setPreviewFrameLayoutOrientation()V

    .line 2761
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 2762
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeIndicatorControl()V

    .line 2765
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeZoom()V

    .line 2766
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoCamera;->setOrientationIndicator(IZ)V

    .line 2770
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2754
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private switchToOtherMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 2438
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2442
    :goto_0
    return-void

    .line 2439
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-static {v0}, Lcom/android/camera/ThumbnailHolder;->keep(Lcom/android/camera/Thumbnail;)V

    .line 2440
    :cond_1
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    .line 2441
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    goto :goto_0
.end method

.method private takeVideoSnapshot()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2919
    iget v0, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    .line 2920
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2921
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 2922
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 2923
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2925
    const-string v1, "videocamera"

    const-string v2, "Video snapshot start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v2, Lcom/android/camera/VideoCamera$JpegPictureCallback;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/VideoCamera$JpegPictureCallback;-><init>(Lcom/android/camera/VideoCamera;Landroid/location/Location;)V

    invoke-virtual {v1, v3, v3, v3, v2}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 2927
    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->showVideoSnapshotUI(Z)V

    .line 2928
    iput-boolean v4, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    .line 2929
    return-void
.end method

.method private updateAndShowStorageHint()V
    .locals 2

    .prologue
    .line 757
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    .line 758
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/VideoCamera;->updateStorageHint(J)V

    .line 759
    return-void
.end method

.method private updateCameraScreenNailSize(II)V
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2367
    iget v3, p0, Lcom/android/camera/VideoCamera;->mCameraDisplayOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-eqz v3, :cond_0

    .line 2368
    move v2, p1

    .line 2369
    .local v2, tmp:I
    move p1, p2

    .line 2370
    move p2, v2

    .line 2373
    .end local v2           #tmp:I
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v1

    .line 2374
    .local v1, oldWidth:I
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v0

    .line 2376
    .local v0, oldHeight:I
    if-ne v1, p1, :cond_1

    if-eq v0, p2, :cond_2

    .line 2377
    :cond_1
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 2378
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->notifyScreenNailChanged()V

    .line 2381
    :cond_2
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v3, :cond_3

    .line 2382
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 2383
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2384
    new-instance v3, Landroid/view/Surface;

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v3, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mSurface:Landroid/view/Surface;

    .line 2386
    :cond_3
    return-void
.end method

.method private updateEffectSelection()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2781
    iget v2, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    .line 2782
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    .line 2783
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v4

    iput v4, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    .line 2784
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    .line 2786
    iget v4, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    if-ne v4, v2, :cond_2

    .line 2787
    iget v4, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    if-nez v4, :cond_1

    .line 2817
    :cond_0
    :goto_0
    return v0

    .line 2788
    :cond_1
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2790
    :cond_2
    const-string v3, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New effect selection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v6, "pref_video_effect_key"

    const-string v7, "none"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    iget v3, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    if-nez v3, :cond_3

    .line 2795
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2}, Lcom/android/camera/EffectsRecorder;->stopPreview()V

    .line 2796
    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    move v0, v1

    .line 2797
    goto :goto_0

    .line 2799
    :cond_3
    iget v0, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v3, "gallery"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2802
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2803
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "video/*"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2805
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2806
    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/VideoCamera;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 2807
    goto :goto_0

    .line 2809
    :cond_4
    if-nez v2, :cond_5

    .line 2811
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopPreview()V

    .line 2812
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->checkQualityAndStartPreview()V

    :goto_1
    move v0, v1

    .line 2817
    goto :goto_0

    .line 2815
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v2, p0, Lcom/android/camera/VideoCamera;->mEffectType:I

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private updateRecordingTime()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 2090
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    .line 2136
    :goto_0
    return-void

    .line 2093
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2094
    iget-wide v2, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    sub-long v2, v0, v2

    .line 2098
    iget v0, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    const v1, 0xea60

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    move v5, v4

    .line 2102
    :goto_1
    if-eqz v5, :cond_5

    .line 2103
    const-wide/16 v0, 0x0

    iget v7, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    int-to-long v7, v7

    sub-long/2addr v7, v2

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v7, 0x3e7

    add-long/2addr v0, v7

    .line 2108
    :goto_2
    iget-boolean v7, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-nez v7, :cond_3

    .line 2109
    invoke-static {v0, v1, v6}, Lcom/android/camera/VideoCamera;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    .line 2110
    const-wide/16 v0, 0x3e8

    .line 2119
    :goto_3
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2121
    iget-boolean v4, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    if-eq v4, v5, :cond_1

    .line 2124
    iput-boolean v5, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 2126
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v5, :cond_4

    const v4, 0x7f090001

    :goto_4
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 2130
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2133
    :cond_1
    rem-long/2addr v2, v0

    sub-long/2addr v0, v2

    .line 2134
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    move v5, v6

    .line 2098
    goto :goto_1

    .line 2115
    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/android/camera/VideoCamera;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    invoke-static {v0, v1, v4}, Lcom/android/camera/VideoCamera;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    .line 2116
    iget v0, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-long v0, v0

    goto :goto_3

    .line 2126
    :cond_4
    const/high16 v4, 0x7f09

    goto :goto_4

    :cond_5
    move-wide v0, v2

    goto :goto_2
.end method

.method private updateUIforHFR()V
    .locals 8

    .prologue
    const/4 v0, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 2388
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v2, :cond_1

    .line 2391
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_hfr_key"

    const v4, 0x7f0c005d

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2394
    if-eqz v2, :cond_0

    const-string v3, "off"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2395
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mHfr:Z

    .line 2410
    :goto_0
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    .line 2411
    const-string v3, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateUIforHFR mHfr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/VideoCamera;->mHfr:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " zoom supported="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    iget-boolean v3, p0, Lcom/android/camera/VideoCamera;->mHfr:Z

    if-eqz v3, :cond_3

    .line 2414
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "pref_camera_audioencoder_key"

    aput-object v4, v3, v1

    const-string v4, "false"

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/IndicatorControlContainer;->enableItems([Ljava/lang/String;)V

    .line 2430
    :goto_1
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    if-eqz v2, :cond_1

    .line 2431
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/ZoomControl;->setVisibility(I)V

    .line 2432
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setEnabled(Z)V

    .line 2435
    :cond_1
    return-void

    .line 2397
    :cond_2
    iput-boolean v6, p0, Lcom/android/camera/VideoCamera;->mHfr:Z

    goto :goto_0

    .line 2421
    :cond_3
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "pref_camera_audioencoder_key"

    aput-object v5, v4, v1

    const-string v5, "true"

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/IndicatorControlContainer;->enableItems([Ljava/lang/String;)V

    .line 2423
    if-eqz v2, :cond_4

    move v0, v1

    move v1, v2

    .line 2424
    goto :goto_1

    :cond_4
    move v1, v2

    .line 2426
    goto :goto_1
.end method

.method private writeDefaultEffectToPrefs()V
    .locals 3

    .prologue
    .line 939
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 940
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_video_effect_key"

    const v2, 0x7f0c0162

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 942
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 943
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "m"

    .prologue
    .line 2842
    iget-boolean v3, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 2866
    :goto_0
    return v3

    .line 2845
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 2846
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 2847
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2850
    .local v2, y:F
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModePicker;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2851
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v3}, Lcom/android/camera/ModePicker;->dismissModeSelection()Z

    .line 2854
    :cond_1
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v3}, Lcom/android/camera/ui/IndicatorControlContainer;->getActiveSettingPopup()Landroid/view/View;

    move-result-object v0

    .line 2855
    .local v0, popup:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 2859
    invoke-static {v1, v2, v0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2861
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v3}, Lcom/android/camera/ui/IndicatorControlContainer;->dismissSettingPopup()Z

    .line 2866
    .end local v0           #popup:Landroid/view/View;
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_2
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 1768
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2451
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 2452
    packed-switch p1, :pswitch_data_0

    .line 2467
    :goto_0
    return-void

    .line 2454
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2457
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    .line 2458
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received URI from gallery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mResetEffect:Z

    goto :goto_0

    .line 2461
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    .line 2462
    const-string v0, "videocamera"

    const-string v1, "No URI from gallery"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mResetEffect:Z

    goto :goto_0

    .line 2452
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1287
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1293
    :cond_0
    :goto_0
    return-void

    .line 1288
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    .line 1289
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording()V

    goto :goto_0

    .line 1290
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1291
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)V
    .locals 2
    .parameter

    .prologue
    .line 2726
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/VideoCamera;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2735
    :cond_0
    :goto_0
    return-void

    .line 2728
    :cond_1
    const-string v0, "videocamera"

    const-string v1, "Start to copy texture."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->copyTexture()V

    .line 2732
    iput p1, p0, Lcom/android/camera/VideoCamera;->mPendingSwitchCameraId:I

    .line 2734
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    goto :goto_0
.end method

.method public onCancelBgTraining(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2521
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2523
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->writeDefaultEffectToPrefs()V

    .line 2525
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlContainer;->reloadPreferences()V

    .line 2527
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->onSharedPreferenceChanged()V

    .line 2528
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2606
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2607
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setDisplayOrientation()V

    .line 2610
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 2611
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2612
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2615
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2616
    const v1, 0x7f040033

    invoke-virtual {v4, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2617
    const v1, 0x7f040008

    invoke-virtual {v4, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2620
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 2621
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeControlByIntent()V

    .line 2622
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeMiscControls()V

    .line 2623
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->showTimeLapseUI(Z)V

    .line 2624
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeVideoSnapshot()V

    .line 2626
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeIndicatorControl()V

    .line 2629
    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->showVideoSnapshotUI(Z)V

    .line 2630
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeZoom()V

    .line 2631
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 2632
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->updateThumbnailView()V

    .line 2633
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0, v3}, Lcom/android/camera/ModePicker;->setCurrentMode(I)V

    .line 2635
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 2612
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 449
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 450
    new-instance v2, Lcom/android/camera/ComboPreferences;

    invoke-direct {v2, p0}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 451
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 452
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v2}, Lcom/android/camera/VideoCamera;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    .line 454
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v4, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-virtual {v2, p0, v4}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 455
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 457
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v2

    iput v2, p0, Lcom/android/camera/VideoCamera;->mNumberOfCameras:I

    .line 458
    const v2, 0x7f0c0162

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mPrefVideoEffectDefault:Ljava/lang/String;

    .line 459
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetEffect()Z

    .line 465
    new-instance v0, Lcom/android/camera/ActivityBase$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$CameraOpenThread;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 466
    .local v0, cameraOpenThread:Lcom/android/camera/ActivityBase$CameraOpenThread;
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->start()V

    .line 468
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    .line 470
    const v2, 0x7f04003a

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->setContentView(I)V

    .line 473
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->isVideoCaptureIntent()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    .line 474
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->createCameraScreenNail(Z)V

    .line 478
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->join()V

    .line 479
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mOpenCameraFail:Z

    if-eqz v2, :cond_1

    .line 480
    const v2, 0x7f0c00fe

    invoke-static {p0, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 531
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 474
    goto :goto_0

    .line 482
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mCameraDisabled:Z

    if-eqz v2, :cond_2

    .line 483
    const v2, 0x7f0c00ff

    invoke-static {p0, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 486
    :catch_0
    move-exception v2

    .line 490
    :cond_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/camera/VideoCamera$1;

    invoke-direct {v2, p0}, Lcom/android/camera/VideoCamera$1;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 497
    .local v1, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 499
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeControlByIntent()V

    .line 500
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeMiscControls()V

    .line 502
    new-instance v2, Lcom/android/camera/RotateDialogController;

    const v4, 0x7f040037

    invoke-direct {v2, p0, v4}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 503
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "android.intent.extra.quickCapture"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mQuickCapture:Z

    .line 504
    new-instance v2, Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    invoke-direct {v2, p0, p0}, Lcom/android/camera/VideoCamera$MyOrientationEventListener;-><init>(Lcom/android/camera/VideoCamera;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    .line 505
    new-instance v2, Lcom/android/camera/LocationManager;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 509
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 510
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mOpenCameraFail:Z

    if-eqz v2, :cond_4

    .line 511
    const v2, 0x7f0c00fe

    invoke-static {p0, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 517
    :catch_1
    move-exception v2

    .line 521
    :cond_3
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    invoke-direct {p0, v2}, Lcom/android/camera/VideoCamera;->showTimeLapseUI(Z)V

    .line 522
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeVideoSnapshot()V

    .line 523
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 525
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeIndicatorControl()V

    goto :goto_1

    .line 513
    :cond_4
    :try_start_2
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mCameraDisabled:Z

    if-eqz v2, :cond_3

    .line 514
    const v2, 0x7f0c00ff

    invoke-static {p0, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method public declared-synchronized onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2534
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2535
    invoke-direct {p0, p2}, Lcom/android/camera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    .line 2537
    :cond_0
    instance-of v0, p1, Landroid/filterpacks/videosink/MediaRecorderStopException;

    if-eqz v0, :cond_1

    .line 2538
    const-string v0, "videocamera"

    const-string v1, "Problem recoding video file. Removing incomplete file."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2539
    monitor-exit p0

    return-void

    .line 2541
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error during recording!"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2534
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEffectsUpdate(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2471
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEffectsUpdate. Effect Message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 2475
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2476
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->checkQualityAndStartPreview()V

    .line 2513
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPaused:Z

    if-eqz v0, :cond_1

    .line 2514
    const-string v0, "videocamera"

    const-string v1, "OnEffectsUpdate: closing effects if activity paused"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeEffects()V

    .line 2517
    :cond_1
    return-void

    .line 2477
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    .line 2479
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mEffectsDisplayResult:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->addVideoToMediaStore()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2480
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_5

    .line 2481
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mQuickCapture:Z

    if-eqz v0, :cond_4

    .line 2482
    invoke-direct {p0, v4}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    .line 2490
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mEffectsDisplayResult:Z

    .line 2493
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2494
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeVideoFileDescriptor()V

    .line 2495
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->clearVideoNamer()V

    goto :goto_0

    .line 2484
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showAlert()V

    goto :goto_1

    .line 2487
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getThumbnail()V

    goto :goto_1

    .line 2497
    :cond_6
    const/4 v0, 0x5

    if-ne p2, v0, :cond_7

    .line 2499
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v4}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    goto :goto_0

    .line 2500
    :cond_7
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2501
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2503
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2507
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2501
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1731
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder error. what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1734
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()Z

    .line 1735
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint()V

    .line 1737
    :cond_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1742
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 1743
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording()V

    .line 1751
    :cond_0
    :goto_0
    return-void

    .line 1744
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 1745
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording()V

    .line 1748
    :cond_2
    const v0, 0x7f0c0153

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1298
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1328
    :goto_0
    return v0

    .line 1302
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1328
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1304
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1305
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->performClick()Z

    goto :goto_0

    .line 1310
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1311
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->performClick()Z

    goto :goto_0

    .line 1316
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1319
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1320
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isPowerModeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPaused:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1323
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->takeVideoSnapshot()V

    goto :goto_1

    .line 1302
    nop

    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_3
        0x17 -> :sswitch_1
        0x1b -> :sswitch_0
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1333
    packed-switch p1, :pswitch_data_0

    .line 1338
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1335
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 1336
    const/4 v0, 0x1

    goto :goto_0

    .line 1333
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public onModeChanged(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 2446
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->switchToOtherMode(I)V

    .line 2447
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPaused:Z

    .line 1229
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_6

    .line 1231
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording()V

    .line 1236
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 1237
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1238
    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1240
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1244
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->disconnectDisplay()V

    .line 1257
    :goto_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 1258
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1259
    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1261
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetScreenOn()V

    .line 1262
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v0, :cond_3

    .line 1263
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlContainer;->dismissSettingPopup()Z

    .line 1266
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->disable()V

    .line 1267
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1269
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1270
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1271
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1272
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoCamera;->mPendingSwitchCameraId:I

    .line 1273
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    .line 1276
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 1277
    return-void

    .line 1233
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 1234
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    goto :goto_0

    .line 1253
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeVideoFileDescriptor()V

    .line 1254
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->clearVideoNamer()V

    goto :goto_1
.end method

.method protected onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 2777
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2778
    return-void
.end method

.method public onProtectiveCurtainClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 727
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2643
    new-instance v4, Lcom/android/camera/VideoCamera$4;

    invoke-direct {v4, p0}, Lcom/android/camera/VideoCamera$4;-><init>(Lcom/android/camera/VideoCamera;)V

    .line 2649
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    const v2, 0x7f0c0109

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v5, 0x104

    invoke-virtual {p0, v5}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 2654
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1024
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mPaused:Z

    .line 1025
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 1026
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 1102
    :cond_0
    :goto_0
    return-void

    .line 1028
    :cond_1
    iput v1, p0, Lcom/android/camera/VideoCamera;->mZoomValue:I

    .line 1030
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->showVideoSnapshotUI(Z)V

    .line 1034
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->enable()V

    .line 1035
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-nez v0, :cond_4

    .line 1036
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetEffect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1037
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1038
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlContainer;->reloadPreferences()V

    .line 1040
    :cond_2
    new-instance v0, Lcom/android/camera/ActivityBase$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$CameraOpenThread;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 1041
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->start()V

    .line 1043
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->join()V

    .line 1044
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mOpenCameraFail:Z

    if-eqz v0, :cond_7

    .line 1045
    const v0, 0x7f0c00fe

    invoke-static {p0, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1051
    :catch_0
    move-exception v0

    .line 1055
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 1056
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 1057
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    .line 1061
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeZoom()V

    .line 1063
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 1066
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1068
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1069
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1070
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1071
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1072
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1073
    new-instance v1, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1074
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/VideoCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1075
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    .line 1077
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/VideoCamera$2;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$2;-><init>(Lcom/android/camera/VideoCamera;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1085
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 1087
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1089
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_5

    .line 1090
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getLastThumbnail()V

    .line 1091
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mModePicker:Lcom/android/camera/ModePicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ModePicker;->setCurrentMode(I)V

    .line 1094
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-eqz v0, :cond_6

    .line 1095
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mOnResumeTime:J

    .line 1096
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1099
    :cond_6
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 1101
    new-instance v0, Lcom/android/camera/VideoCamera$VideoNamer;

    invoke-direct {v0}, Lcom/android/camera/VideoCamera$VideoNamer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoNamer:Lcom/android/camera/VideoCamera$VideoNamer;

    goto/16 :goto_0

    .line 1047
    :cond_7
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mCameraDisabled:Z

    if-eqz v0, :cond_3

    .line 1048
    const v0, 0x7f0c00ff

    invoke-static {p0, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 699
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()Z

    .line 700
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    .line 701
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 694
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    .line 695
    return-void
.end method

.method public onReviewPlayClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPlayVideoActivity()V

    .line 690
    return-void
.end method

.method public onReviewRetakeClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 683
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->deleteCurrentVideo()V

    .line 684
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideAlert()V

    .line 685
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 5

    .prologue
    .line 2680
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mPaused:Z

    if-eqz v2, :cond_0

    .line 2722
    :goto_0
    return-void

    .line 2681
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    monitor-enter v3

    .line 2684
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    monitor-exit v3

    goto :goto_0

    .line 2720
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2686
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v4}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 2688
    .local v0, recordLocation:Z
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 2691
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateEffectSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 2693
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 2694
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    invoke-direct {p0, v2}, Lcom/android/camera/VideoCamera;->showTimeLapseUI(Z)V

    .line 2696
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2697
    .local v1, size:Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    if-ne v2, v4, :cond_3

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iget v4, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    if-ne v2, v4, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mRestartPreview:Z

    if-eqz v2, :cond_5

    .line 2699
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2700
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopPreview()V

    .line 2705
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 2706
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    .line 2720
    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2721
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateUIforHFR()V

    goto :goto_0

    .line 2702
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 2703
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    goto :goto_1

    .line 2707
    :cond_5
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mVideoSnapSizeChanged:Z

    if-eqz v2, :cond_7

    .line 2709
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2710
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 2714
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    .line 2715
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mVideoSnapSizeChanged:Z

    .line 2716
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mRestartPreview:Z

    goto :goto_2

    .line 2712
    :cond_6
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2}, Lcom/android/camera/EffectsRecorder;->release()V

    goto :goto_3

    .line 2718
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onShutterButtonClick()V
    .locals 5

    .prologue
    .line 731
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseCameraControls()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    if-eqz v1, :cond_1

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 735
    .local v0, stop:Z
    if-eqz v0, :cond_3

    .line 736
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording()V

    .line 740
    :goto_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 745
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    .line 746
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 738
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startVideoRecording()V

    goto :goto_1
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 754
    return-void
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2934
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2935
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    const v1, 0x7f0c0171

    iget v2, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2945
    :cond_0
    :goto_0
    return-void

    .line 2940
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mSnapshotInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2944
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->takeVideoSnapshot()V

    goto :goto_0
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    .line 677
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->gotoGallery()V

    .line 679
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1281
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onUserInteraction()V

    .line 1282
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 1283
    :cond_0
    return-void
.end method

.method setPreviewFrameLayoutOrientation()V
    .locals 7

    .prologue
    const/16 v6, 0xb4

    .line 977
    const/4 v2, 0x1

    .line 978
    .local v2, set:Z
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 979
    .local v3, width:I
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 980
    .local v0, height:I
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    aget-object v1, v4, v5

    .line 982
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setDisplayOrientation()V

    .line 984
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 985
    iget v4, p0, Lcom/android/camera/VideoCamera;->mDisplayRotation:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/camera/VideoCamera;->mDisplayRotation:I

    if-ne v4, v6, :cond_2

    .line 986
    :cond_0
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    rem-int/lit16 v4, v4, 0xb4

    if-eqz v4, :cond_1

    .line 987
    const/4 v2, 0x0

    .line 1013
    :goto_0
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v4, v2}, Lcom/android/camera/PreviewFrameLayout;->setCameraOrientation(Z)V

    .line 1014
    return-void

    .line 989
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 992
    :cond_2
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    rem-int/lit16 v4, v4, 0xb4

    if-eqz v4, :cond_3

    .line 993
    const/4 v2, 0x1

    goto :goto_0

    .line 995
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 999
    :cond_4
    iget v4, p0, Lcom/android/camera/VideoCamera;->mDisplayRotation:I

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/camera/VideoCamera;->mDisplayRotation:I

    if-ne v4, v6, :cond_7

    .line 1000
    :cond_5
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    rem-int/lit16 v4, v4, 0xb4

    if-eqz v4, :cond_6

    .line 1001
    const/4 v2, 0x1

    goto :goto_0

    .line 1003
    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 1006
    :cond_7
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    rem-int/lit16 v4, v4, 0xb4

    if-eqz v4, :cond_8

    .line 1007
    const/4 v2, 0x0

    goto :goto_0

    .line 1009
    :cond_8
    const/4 v2, 0x1

    goto :goto_0
.end method

.method showVideoSnapshotUI(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2910
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 2911
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewFrameLayout;->showBorder(Z)V

    .line 2912
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/IndicatorControlContainer;->enableZoom(Z)V

    .line 2913
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-nez p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 2915
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 2912
    goto :goto_0

    :cond_2
    move v1, v2

    .line 2913
    goto :goto_1
.end method

.method protected updateCameraAppView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2950
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->updateCameraAppView()V

    .line 2952
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2966
    :cond_0
    :goto_0
    return-void

    .line 2955
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mShowCameraAppView:Z

    if-nez v0, :cond_3

    .line 2956
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2957
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mRestoreFlash:Z

    goto :goto_0

    .line 2960
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mRestoreFlash:Z

    .line 2961
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    goto :goto_0

    .line 2962
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mRestoreFlash:Z

    if-eqz v0, :cond_0

    .line 2963
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mRestoreFlash:Z

    .line 2964
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    goto :goto_0
.end method
