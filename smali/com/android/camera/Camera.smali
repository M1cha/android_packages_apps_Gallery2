.class public Lcom/android/camera/Camera;
.super Lcom/android/camera/ActivityBase;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;
.implements Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/camera/FocusManager$Listener;
.implements Lcom/android/camera/LocationManager$Listener;
.implements Lcom/android/camera/ModePicker$OnModeChangeListener;
.implements Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Camera$MyOrientationEventListener;,
        Lcom/android/camera/Camera$ImageNamer;,
        Lcom/android/camera/Camera$ImageSaver;,
        Lcom/android/camera/Camera$SaveRequest;,
        Lcom/android/camera/Camera$AutoFocusMoveCallback;,
        Lcom/android/camera/Camera$AutoFocusCallback;,
        Lcom/android/camera/Camera$JpegPictureCallback;,
        Lcom/android/camera/Camera$RawPictureCallback;,
        Lcom/android/camera/Camera$PostViewPictureCallback;,
        Lcom/android/camera/Camera$StatsCallback;,
        Lcom/android/camera/Camera$ShutterCallback;,
        Lcom/android/camera/Camera$ZoomChangeListener;,
        Lcom/android/camera/Camera$MainHandler;,
        Lcom/android/camera/Camera$CameraStartUpThread;
    }
.end annotation


# static fields
.field public static mBrightnessVisible:Z

.field public static mHiston:Z

.field public static statsdata:[I


# instance fields
.field private LeftValue:Landroid/widget/TextView;

.field final OTHER_SETTING_KEYS:[Ljava/lang/String;

.field final QCOM_SETTING_KEYS:[Ljava/lang/String;

.field final QCOM_SETTING_KEYS_1:[Ljava/lang/String;

.field private RightValue:Landroid/widget/TextView;

.field private SCE_FACTOR_STEP:I

.field private Title:Landroid/widget/TextView;

.field private brightnessProgressBar:Landroid/widget/ProgressBar;

.field private mAeLockSupported:Z

.field private final mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Lcom/android/camera/Camera$AutoFocusMoveCallback;

.field public mAutoFocusTime:J

.field private mAwbLockSupported:Z

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mBurstSnapNum:I

.field private mCameraDisplayOrientation:I

.field private mCameraSound:Landroid/media/MediaActionSound;

.field mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

.field private mCameraState:I

.field public mCaptureStartTime:J

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContinousFocusSupported:Z

.field private mCropValue:Ljava/lang/String;

.field private mDidRegister:Z

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mDoSnapRunnable:Ljava/lang/Runnable;

.field private final mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field private mExposureIndicator:Landroid/widget/TextView;

.field public mFaceDetectionEnabled:Z

.field private mFaceDetectionStarted:Z

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFirstTimeInitialized:Z

.field private mFlashIndicator:Landroid/widget/ImageView;

.field private mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Landroid/widget/ImageView;

.field private mFocusManager:Lcom/android/camera/FocusManager;

.field private mFocusStartTime:J

.field private final mFormatter:Ljava/util/Formatter;

.field private final mFormatterArgs:[Ljava/lang/Object;

.field private mGpsIndicator:Landroid/widget/ImageView;

.field private mGraphView:Lcom/android/camera/GraphView;

.field private final mHandler:Landroid/os/Handler;

.field private mImageNamer:Lcom/android/camera/Camera$ImageNamer;

.field private mImageSaver:Lcom/android/camera/Camera$ImageSaver;

.field private mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsImageCaptureIntent:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field private mJpegRotation:I

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mMediaProviderClient:Landroid/content/ContentProviderClient;

.field private mMeteringAreaSupported:Z

.field private mModePicker:Lcom/android/camera/ModePicker;

.field private mOnResumeTime:J

.field private mOnScreenIndicators:Lcom/android/camera/ui/Rotatable;

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

.field public mPictureDisplayedToJpegCallbackTime:J

.field private final mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

.field private mQuickCapture:Z

.field private final mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private mReceivedSnapNum:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestartPreview:Z

.field private mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewRetakeButton:Landroid/view/View;

.field private mRotateDialog:Lcom/android/camera/RotateDialogController;

.field private mSaveUri:Landroid/net/Uri;

.field private mSceneIndicator:Landroid/widget/ImageView;

.field private mSceneMode:Ljava/lang/String;

.field private mSeekBarInitialized:Z

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private final mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mSkinToneSeekBar:Z

.field private mSnapshotMode:I

.field private mSnapshotOnIdle:Z

.field mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

.field private final mStatsCallback:Lcom/android/camera/Camera$StatsCallback;

.field private mStorageSpace:J

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTouchAfAecFlag:Z

.field private mUpdateSet:I

.field private mWhiteBalanceIndicator:Landroid/widget/ImageView;

.field private mZoomControl:Lcom/android/camera/ui/ZoomControl;

.field private mZoomMax:I

.field private mZoomValue:I

.field private mbrightness:I

.field private mbrightness_step:I

.field private mskinToneSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mskinToneValue:I

.field public otherSettingKeys:Ljava/util/HashMap;

.field private skinToneSeekBar:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/Camera;->mBrightnessVisible:Z

    .line 145
    const/16 v0, 0x101

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/Camera;->statsdata:[I

    .line 146
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/Camera;->mHiston:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 93
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 101
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pref_camera_recordlocation_key"

    aput-object v1, v0, v3

    const-string v1, "pref_camera_picturesize_key"

    aput-object v1, v0, v5

    const-string v1, "pref_camera_pictureformat_key"

    aput-object v1, v0, v7

    const-string v1, "pref_camera_jpegquality_key"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "pref_camera_focusmode_key"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pref_camera_zsl_key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_camera_coloreffect_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/Camera;->OTHER_SETTING_KEYS:[Ljava/lang/String;

    .line 111
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pref_camera_facedetection_key"

    aput-object v1, v0, v3

    const-string v1, "pref_camera_touchafaec_key"

    aput-object v1, v0, v5

    const-string v1, "pref_camera_touchaec_key"

    aput-object v1, v0, v7

    const-string v1, "pref_camera_selectablezoneaf_key"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "pref_camera_saturation_key"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pref_camera_contrast_key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_camera_sharpness_key"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_camera_autoexposure_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/Camera;->QCOM_SETTING_KEYS:[Ljava/lang/String;

    .line 122
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pref_camera_antibanding_key"

    aput-object v1, v0, v3

    const-string v1, "pref_camera_iso_key"

    aput-object v1, v0, v5

    const-string v1, "pref_camera_lensshading_key"

    aput-object v1, v0, v7

    const-string v1, "pref_camera_histogram_key"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "pref_camera_denoise_key"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pref_camera_redeyereduction_key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_camera_ae_bracket_hdr_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/Camera;->QCOM_SETTING_KEYS_1:[Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/Camera;->otherSettingKeys:Ljava/util/HashMap;

    .line 136
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 138
    iput v5, p0, Lcom/android/camera/Camera;->mBurstSnapNum:I

    .line 139
    iput v3, p0, Lcom/android/camera/Camera;->mReceivedSnapNum:I

    .line 140
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/Camera;->mOrientation:I

    .line 196
    iput v3, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    .line 203
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 211
    iput v6, p0, Lcom/android/camera/Camera;->mbrightness:I

    .line 212
    iput v5, p0, Lcom/android/camera/Camera;->mbrightness_step:I

    .line 248
    new-instance v0, Lcom/android/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$1;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mBuilder:Ljava/lang/StringBuilder;

    .line 256
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/camera/Camera;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mFormatter:Ljava/util/Formatter;

    .line 257
    new-array v0, v5, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFormatterArgs:[Ljava/lang/Object;

    .line 287
    iput v3, p0, Lcom/android/camera/Camera;->mCameraState:I

    .line 288
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    .line 291
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 295
    new-instance v0, Lcom/android/camera/Camera$ShutterCallback;

    invoke-direct {v0, p0, v4}, Lcom/android/camera/Camera$ShutterCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

    .line 296
    new-instance v0, Lcom/android/camera/Camera$PostViewPictureCallback;

    invoke-direct {v0, p0, v4}, Lcom/android/camera/Camera$PostViewPictureCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

    .line 298
    new-instance v0, Lcom/android/camera/Camera$RawPictureCallback;

    invoke-direct {v0, p0, v4}, Lcom/android/camera/Camera$RawPictureCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

    .line 300
    new-instance v0, Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-direct {v0, p0, v4}, Lcom/android/camera/Camera$AutoFocusCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    .line 302
    new-instance v0, Lcom/android/camera/Camera$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v4}, Lcom/android/camera/Camera$AutoFocusMoveCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mAutoFocusMoveCallback:Lcom/android/camera/Camera$AutoFocusMoveCallback;

    .line 304
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 305
    new-instance v0, Lcom/android/camera/Camera$StatsCallback;

    invoke-direct {v0, p0, v4}, Lcom/android/camera/Camera$StatsCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mStatsCallback:Lcom/android/camera/Camera$StatsCallback;

    .line 328
    new-instance v0, Lcom/android/camera/Camera$MainHandler;

    invoke-direct {v0, p0, v4}, Lcom/android/camera/Camera$MainHandler;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    .line 336
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/camera/Camera;->SCE_FACTOR_STEP:I

    .line 337
    iput v3, p0, Lcom/android/camera/Camera;->mskinToneValue:I

    .line 338
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mSkinToneSeekBar:Z

    .line 339
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mSeekBarInitialized:Z

    .line 348
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    .line 712
    new-instance v0, Lcom/android/camera/Camera$3;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$3;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1011
    new-instance v0, Lcom/android/camera/Camera$4;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$4;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1021
    new-instance v0, Lcom/android/camera/Camera$5;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$5;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mskinToneSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1579
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/Camera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/android/camera/Camera;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/android/camera/Camera;->mOnResumeTime:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/Camera;->setDisplayOrientation()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/Camera;->showTapToFocusToast()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageSaver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/Camera;->switchCamera()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeAfterCameraOpen()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/Camera;->setSkinToneFactor()V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mSeekBarInitialized:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/camera/Camera;)Lcom/android/camera/ComboPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/Camera;->disableSkinToneSeekBar()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/camera/Camera;->mZoomValue:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/camera/Camera;->mZoomValue:I

    return p1
.end method

.method static synthetic access$3000(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkStorage()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/android/camera/Camera;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3202(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/android/camera/Camera;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3300(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/camera/Camera;)Lcom/android/camera/GraphView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/Camera;->mGraphView:Lcom/android/camera/GraphView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3502(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3600(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/android/camera/Camera;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3602(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/android/camera/Camera;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3700(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/camera/Camera;->mReceivedSnapNum:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/camera/Camera;->mReceivedSnapNum:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3802(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3900(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/camera/Camera;->mSnapshotMode:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/camera/Camera;->mBurstSnapNum:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/camera/Camera;->mBurstSnapNum:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageNamer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/camera/Camera;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/Camera;->showPostCaptureAlert()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/Camera;->doAttach()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/camera/Camera;->SCE_FACTOR_STEP:I

    return v0
.end method

.method static synthetic access$4900(Lcom/android/camera/Camera;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/Camera;->RightValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/camera/Camera;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/Camera;->LeftValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/camera/Camera;->mskinToneValue:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/camera/Camera;->mskinToneValue:I

    return p1
.end method

.method static synthetic access$5200(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/android/camera/Camera;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$5300(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    return v0
.end method

.method static synthetic access$5500(Lcom/android/camera/Camera;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/camera/Camera;->mOrientation:I

    return v0
.end method

.method static synthetic access$5702(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/camera/Camera;->mOrientation:I

    return p1
.end method

.method static synthetic access$5800(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$5802(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$5900(Lcom/android/camera/Camera;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/Camera;->restorePreferences()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeCapabilities()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFocusManager()V

    return-void
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 585
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 586
    .local v0, queue:Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/camera/Camera$2;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$2;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 593
    return-void
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 2090
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/camera/Camera;->mStorageSpace:J

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkStorage()V
    .locals 2

    .prologue
    .line 1642
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mStorageSpace:J

    .line 1643
    iget-wide v0, p0, Lcom/android/camera/Camera;->mStorageSpace:J

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/Camera;->updateStorageHint(J)V

    .line 1644
    return-void
.end method

.method private closeCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2228
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 2229
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 2230
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 2231
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 2232
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 2233
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 2234
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 2235
    iput-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 2236
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2237
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onCameraReleased()V

    .line 2239
    :cond_0
    return-void
.end method

.method private collapseCameraControls()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1562
    iget-object v1, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v1}, Lcom/android/camera/ui/IndicatorControlContainer;->dismissSettingPopup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1567
    :cond_0
    :goto_0
    return v0

    .line 1566
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v1}, Lcom/android/camera/ModePicker;->dismissModeSelection()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1567
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableSkinToneSeekBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 3197
    iget-object v0, p0, Lcom/android/camera/Camera;->skinToneSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 3198
    iget-object v0, p0, Lcom/android/camera/Camera;->Title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3199
    iget-object v0, p0, Lcom/android/camera/Camera;->RightValue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3200
    iget-object v0, p0, Lcom/android/camera/Camera;->LeftValue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3201
    iput v2, p0, Lcom/android/camera/Camera;->mskinToneValue:I

    .line 3202
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mSkinToneSeekBar:Z

    .line 3203
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3204
    const-string v1, "pref_camera_skinToneEnhancement_factor_key"

    iget v2, p0, Lcom/android/camera/Camera;->mskinToneValue:I

    add-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3206
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3209
    return-void
.end method

.method private doAttach()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 1678
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1751
    :goto_0
    return-void

    .line 1682
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 1684
    iget-object v2, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1689
    iget-object v2, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 1692
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1693
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1694
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1696
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->setResultEx(I)V

    .line 1697
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1701
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1698
    :catch_0
    move-exception v1

    .line 1701
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1704
    :cond_1
    invoke-static {v1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v0

    .line 1705
    const v2, 0xc800

    invoke-static {v1, v2}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1706
    invoke-static {v1, v0}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1707
    new-instance v1, Landroid/content/Intent;

    const-string v2, "inline-data"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/android/camera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 1709
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0

    .line 1716
    :cond_2
    :try_start_2
    const-string v2, "crop-temp"

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1717
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1718
    const-string v3, "crop-temp"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/Camera;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 1719
    :try_start_3
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1720
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1721
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 1731
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1734
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1735
    iget-object v2, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    const-string v3, "circle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1736
    const-string v2, "circleCrop"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    :cond_3
    iget-object v2, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    .line 1739
    const-string v2, "output"

    iget-object v3, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1744
    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1746
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1747
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1749
    const/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1722
    :catch_1
    move-exception v1

    .line 1723
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->setResultEx(I)V

    .line 1724
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1731
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1726
    :catch_2
    move-exception v1

    .line 1727
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->setResultEx(I)V

    .line 1728
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1731
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1741
    :cond_4
    const-string v2, "return-data"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 1731
    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    .line 1701
    :catchall_3
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_1
.end method

.method private doCancel()V
    .locals 2

    .prologue
    .line 1754
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 1755
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 1756
    return-void
.end method

.method private enableCameraControls(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v0, :cond_0

    .line 1572
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/IndicatorControlContainer;->setEnabled(Z)V

    .line 1574
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0, p1}, Lcom/android/camera/ModePicker;->setEnabled(Z)V

    .line 1575
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomControl;->setEnabled(Z)V

    .line 1576
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 1577
    :cond_3
    return-void
.end method

.method private enableSkinToneSeekBar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3177
    iget-object v0, p0, Lcom/android/camera/Camera;->skinToneSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 3178
    iget-object v0, p0, Lcom/android/camera/Camera;->skinToneSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 3179
    iget-object v0, p0, Lcom/android/camera/Camera;->skinToneSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->requestFocus()Z

    .line 3180
    iget v0, p0, Lcom/android/camera/Camera;->mskinToneValue:I

    if-eqz v0, :cond_0

    .line 3181
    iget v0, p0, Lcom/android/camera/Camera;->mskinToneValue:I

    iget v1, p0, Lcom/android/camera/Camera;->SCE_FACTOR_STEP:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    .line 3182
    iget-object v1, p0, Lcom/android/camera/Camera;->mskinToneSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-object v2, p0, Lcom/android/camera/Camera;->skinToneSeekBar:Landroid/widget/SeekBar;

    invoke-interface {v1, v2, v0, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 3188
    :goto_0
    iget-object v1, p0, Lcom/android/camera/Camera;->skinToneSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3189
    iget-object v0, p0, Lcom/android/camera/Camera;->Title:Landroid/widget/TextView;

    const-string v1, "Skin Tone Enhancement"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3190
    iget-object v0, p0, Lcom/android/camera/Camera;->Title:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3191
    iget-object v0, p0, Lcom/android/camera/Camera;->RightValue:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3192
    iget-object v0, p0, Lcom/android/camera/Camera;->LeftValue:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mSkinToneSeekBar:Z

    .line 3194
    return-void

    .line 3184
    :cond_0
    const/16 v0, 0xa

    .line 3185
    iget-object v1, p0, Lcom/android/camera/Camera;->RightValue:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3186
    iget-object v1, p0, Lcom/android/camera/Camera;->LeftValue:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getCameraRotation()I
    .locals 2

    .prologue
    .line 1422
    iget v0, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    iget v1, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .parameter "preferences"

    .prologue
    .line 1436
    invoke-static {p0}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 1437
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1442
    .end local v0           #intentCameraId:I
    :goto_0
    return v0

    .restart local v0       #intentCameraId:I
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private hidePostCaptureAlert()V
    .locals 1

    .prologue
    .line 2877
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 2878
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2879
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2881
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2882
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v0, :cond_0

    .line 2883
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2886
    :cond_0
    return-void
.end method

.method private initOnScreenIndicator()V
    .locals 1

    .prologue
    .line 731
    const v0, 0x7f0b007e

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    .line 732
    const v0, 0x7f0b007c

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mExposureIndicator:Landroid/widget/TextView;

    .line 733
    const v0, 0x7f0b007a

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFlashIndicator:Landroid/widget/ImageView;

    .line 734
    const v0, 0x7f0b007d

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSceneIndicator:Landroid/widget/ImageView;

    .line 735
    const v0, 0x7f0b007b

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    .line 737
    const v0, 0x7f0b007f

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    .line 738
    return-void
.end method

.method private initializeAfterCameraOpen()V
    .locals 3

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    .line 501
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/android/camera/PreviewFrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 503
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-nez v0, :cond_0

    .line 504
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeIndicatorControl()V

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorControlContainer;->setEnabled(Z)V

    .line 508
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeZoom()V

    .line 509
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateOnScreenIndicators()V

    .line 510
    invoke-direct {p0}, Lcom/android/camera/Camera;->showTapToFocusToastIfNeeded()V

    .line 511
    return-void
.end method

.method private initializeCapabilities()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3080
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 3081
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "auto"

    iget-object v3, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    .line 3084
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mMeteringAreaSupported:Z

    .line 3085
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mAeLockSupported:Z

    .line 3086
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mAwbLockSupported:Z

    .line 3087
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mContinousFocusSupported:Z

    .line 3089
    return-void

    :cond_0
    move v0, v2

    .line 3081
    goto :goto_0

    :cond_1
    move v1, v2

    .line 3084
    goto :goto_1
.end method

.method private initializeControlByIntent()V
    .locals 3

    .prologue
    const v2, 0x7f0b0082

    const/4 v1, 0x0

    .line 1968
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 1972
    const v0, 0x7f0b0080

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    .line 1973
    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/Camera;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    .line 1974
    const v0, 0x7f0b0081

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mReviewRetakeButton:Landroid/view/View;

    .line 1975
    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1980
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    instance-of v0, v0, Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v0, :cond_0

    .line 1981
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    .line 1984
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->setupCaptureParams()V

    .line 1996
    :goto_0
    return-void

    .line 1986
    :cond_1
    const v0, 0x7f0b0083

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    .line 1987
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->enableFilter(Z)V

    .line 1988
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1989
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/android/camera/Camera;->mThumbnailViewWidth:I

    .line 1991
    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ModePicker;

    iput-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    .line 1992
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0, v1}, Lcom/android/camera/ModePicker;->setVisibility(I)V

    .line 1993
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0, p0}, Lcom/android/camera/ModePicker;->setOnModeChangeListener(Lcom/android/camera/ModePicker$OnModeChangeListener;)V

    .line 1994
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0, v1}, Lcom/android/camera/ModePicker;->setCurrentMode(I)V

    goto :goto_0
.end method

.method private initializeFirstTime()V
    .locals 3

    .prologue
    .line 537
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    .line 573
    :goto_0
    return-void

    .line 541
    :cond_0
    new-instance v1, Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-direct {v1, p0, p0}, Lcom/android/camera/Camera$MyOrientationEventListener;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    .line 542
    iget-object v1, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/camera/Camera$MyOrientationEventListener;->enable()V

    .line 545
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 547
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 549
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepMediaProviderInstance()V

    .line 550
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkStorage()V

    .line 553
    const v1, 0x7f0b000f

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ShutterButton;

    iput-object v1, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 554
    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 555
    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 557
    new-instance v1, Lcom/android/camera/Camera$ImageSaver;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$ImageSaver;-><init>(Lcom/android/camera/Camera;)V

    iput-object v1, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    .line 558
    new-instance v1, Lcom/android/camera/Camera$ImageNamer;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$ImageNamer;-><init>(Lcom/android/camera/Camera;)V

    iput-object v1, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    .line 559
    invoke-direct {p0}, Lcom/android/camera/Camera;->installIntentFilter()V

    .line 561
    const v1, 0x7f0b0065

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/GraphView;

    iput-object v1, p0, Lcom/android/camera/Camera;->mGraphView:Lcom/android/camera/GraphView;

    .line 562
    iget-object v1, p0, Lcom/android/camera/Camera;->mGraphView:Lcom/android/camera/GraphView;

    if-nez v1, :cond_1

    .line 563
    const-string v1, "camera"

    const-string v2, "mGraphView is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mGraphView:Lcom/android/camera/GraphView;

    invoke-virtual {v1, p0}, Lcom/android/camera/GraphView;->setCameraObject(Lcom/android/camera/Camera;)V

    .line 571
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    .line 572
    invoke-direct {p0}, Lcom/android/camera/Camera;->addIdleHandler()V

    goto :goto_0
.end method

.method private initializeFocusManager()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 2000
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/Camera;->mCameraId:I

    aget-object v0, v0, v1

    .line 2001
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v6, :cond_0

    .line 2002
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2004
    new-instance v0, Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    iget-object v4, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusManager;-><init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/view/View;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    .line 2007
    return-void

    .line 2001
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private initializeIndicatorControl()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1539
    const v0, 0x7f0b0010

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/IndicatorControlContainer;

    iput-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    .line 1541
    invoke-direct {p0}, Lcom/android/camera/Camera;->loadCameraPreferences()V

    .line 1542
    iget-object v0, p0, Lcom/android/camera/Camera;->otherSettingKeys:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->OTHER_SETTING_KEYS:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    iget-object v0, p0, Lcom/android/camera/Camera;->otherSettingKeys:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->QCOM_SETTING_KEYS:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    iget-object v0, p0, Lcom/android/camera/Camera;->otherSettingKeys:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->QCOM_SETTING_KEYS_1:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "pref_camera_flashmode_key"

    aput-object v0, v4, v3

    const-string v0, "pref_camera_whitebalance_key"

    aput-object v0, v4, v5

    const-string v0, "pref_camera_exposure_key"

    aput-object v0, v4, v6

    const/4 v0, 0x3

    const-string v1, "pref_camera_scenemode_key"

    aput-object v1, v4, v0

    .line 1551
    const v0, 0x7f020072

    invoke-static {v0}, Lcom/android/camera/ui/CameraPicker;->setImageResourceId(I)V

    .line 1552
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v3

    iget-object v5, p0, Lcom/android/camera/Camera;->otherSettingKeys:Ljava/util/HashMap;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/IndicatorControlContainer;->initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Z[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1555
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    const v1, 0x7f0b0002

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorControlContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraPicker;

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    .line 1557
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateSceneModeUI()V

    .line 1558
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/IndicatorControlContainer;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 1559
    return-void
.end method

.method private initializeMiscControls()V
    .locals 1

    .prologue
    .line 2011
    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    .line 2013
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setSingleTapUpListener(Landroid/view/View;)V

    .line 2015
    const v0, 0x7f0b0012

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ZoomControl;

    iput-object v0, p0, Lcom/android/camera/Camera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    .line 2016
    const v0, 0x7f0b0079

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/Camera;->mOnScreenIndicators:Lcom/android/camera/ui/Rotatable;

    .line 2017
    const v0, 0x7f0b0062

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FaceView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 2018
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewFrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2019
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;)V

    .line 2020
    return-void
.end method

.method private initializeSecondTime()V
    .locals 3

    .prologue
    .line 600
    iget-object v1, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/camera/Camera$MyOrientationEventListener;->enable()V

    .line 603
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 605
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 607
    invoke-direct {p0}, Lcom/android/camera/Camera;->installIntentFilter()V

    .line 608
    new-instance v1, Lcom/android/camera/Camera$ImageSaver;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$ImageSaver;-><init>(Lcom/android/camera/Camera;)V

    iput-object v1, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    .line 609
    new-instance v1, Lcom/android/camera/Camera$ImageNamer;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$ImageNamer;-><init>(Lcom/android/camera/Camera;)V

    iput-object v1, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    .line 610
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeZoom()V

    .line 611
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepMediaProviderInstance()V

    .line 612
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkStorage()V

    .line 613
    invoke-direct {p0}, Lcom/android/camera/Camera;->hidePostCaptureAlert()V

    .line 615
    iget-object v1, p0, Lcom/android/camera/Camera;->mGraphView:Lcom/android/camera/GraphView;

    if-eqz v1, :cond_0

    .line 616
    iget-object v1, p0, Lcom/android/camera/Camera;->mGraphView:Lcom/android/camera/GraphView;

    invoke-virtual {v1, p0}, Lcom/android/camera/GraphView;->setCameraObject(Lcom/android/camera/Camera;)V

    .line 618
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_1

    .line 619
    iget-object v1, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ModePicker;->setCurrentMode(I)V

    .line 621
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v1, :cond_2

    .line 622
    iget-object v1, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v1}, Lcom/android/camera/ui/IndicatorControlContainer;->reloadPreferences()V

    .line 624
    :cond_2
    return-void
.end method

.method private initializeZoom()V
    .locals 3

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    :goto_0
    return-void

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mZoomMax:I

    .line 644
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    iget v1, p0, Lcom/android/camera/Camera;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setZoomMax(I)V

    .line 645
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setZoomIndex(I)V

    .line 646
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    new-instance v1, Lcom/android/camera/Camera$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/Camera$ZoomChangeListener;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setOnZoomChangeListener(Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;)V

    goto :goto_0
.end method

.method private installIntentFilter()V
    .locals 2

    .prologue
    .line 1836
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1838
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1839
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1840
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1841
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1842
    iget-object v1, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1843
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 1844
    return-void
.end method

.method private isCameraIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2848
    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 2854
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2855
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
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

    .line 2325
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

.method private keepMediaProviderInstance()V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 531
    :cond_0
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 3019
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3020
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3021
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3022
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 4

    .prologue
    .line 1532
    new-instance v0, Lcom/android/camera/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 1534
    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 1535
    return-void
.end method

.method private needRestart()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 2357
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_zsl_key"

    const v2, 0x7f0c002b

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2359
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/Camera;->mSnapshotMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v1, :cond_0

    .line 2362
    const-string v0, "camera"

    const-string v1, "Switching to ZSL Camera Mode. Restart Preview"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 2364
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 2373
    :goto_0
    return v0

    .line 2366
    :cond_0
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/Camera;->mSnapshotMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_1

    .line 2369
    const-string v0, "camera"

    const-string v1, "Switching to Normal Camera Mode. Restart Preview"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 2371
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    goto :goto_0

    .line 2373
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    goto :goto_0
.end method

.method private overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1505
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v0, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/IndicatorControlContainer;->enableFilter(Z)V

    .line 1507
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pref_camera_flashmode_key"

    aput-object v2, v1, v4

    aput-object p1, v1, v3

    const/4 v2, 0x2

    const-string v3, "pref_camera_whitebalance_key"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 v2, 0x4

    const-string v3, "pref_camera_focusmode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p3, v1, v2

    const/4 v2, 0x6

    const-string v3, "pref_camera_exposure_key"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object p4, v1, v2

    const/16 v2, 0x8

    const-string v3, "pref_camera_touchafaec_key"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    aput-object p5, v1, v2

    const/16 v2, 0xa

    const-string v3, "pref_camera_autoexposure_key"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    aput-object p6, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorControlContainer;->overrideSettings([Ljava/lang/String;)V

    .line 1514
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/IndicatorControlContainer;->enableFilter(Z)V

    .line 1516
    :cond_0
    return-void
.end method

.method private qcomUpdateCameraParametersPreference()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2379
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "luma-adaptation"

    iget v2, p0, Lcom/android/camera/Camera;->mbrightness:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2381
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2383
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_touchafaec_key"

    const v2, 0x7f0c009a

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2386
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedTouchAfAec()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2387
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setTouchAfAec(Ljava/lang/String;)V

    .line 2394
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getTouchAfAec()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "touch-on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mTouchAfAecFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2405
    :goto_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_pictureformat_key"

    const v2, 0x7f0c00c6

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2408
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "picture-format"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_jpegquality_key"

    const v3, 0x7f0c00c5

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2415
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 2416
    if-nez v2, :cond_16

    .line 2417
    const-string v0, "camera"

    const-string v2, "error getPictureSize: size is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_selectablezoneaf_key"

    const v3, 0x7f0c002c

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2430
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedSelectableZoneAf()Ljava/util/List;

    .line 2431
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedSelectableZoneAf()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2432
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setSelectableZoneAf(Ljava/lang/String;)V

    .line 2445
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_ae_bracket_hdr_key"

    const v3, 0x7f0c0058

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2447
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setAEBracket(Ljava/lang/String;)V

    .line 2451
    const v2, 0x7f0c0056

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2452
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "num-snaps-per-shutter"

    const-string v3, "2"

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2473
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedDenoiseModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2474
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_denoise_key"

    const v3, 0x7f0c006e

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2477
    const-string v2, "denoise-on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "raw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2478
    const-string v0, "denoise-off"

    .line 2479
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    const v2, 0x7f0c0050

    iget v3, p0, Lcom/android/camera/Camera;->mOrientation:I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2481
    :cond_4
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setDenoise(Ljava/lang/String;)V

    .line 2485
    :cond_5
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_redeyereduction_key"

    const v2, 0x7f0c0044

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2488
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedRedeyeReductionModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2490
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setRedeyeReductionMode(Ljava/lang/String;)V

    .line 2493
    :cond_6
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_iso_key"

    const v2, 0x7f0c0071

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2496
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2498
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setISOValue(Ljava/lang/String;)V

    .line 2502
    :cond_7
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_coloreffect_key"

    const v2, 0x7f0c0089

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2505
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Color effect value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2507
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2511
    :cond_8
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_saturation_key"

    const v3, 0x7f0c00c3

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2514
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2515
    const-string v2, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saturation value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    if-ltz v1, :cond_9

    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxSaturation()I

    move-result v2

    if-gt v1, v2, :cond_9

    .line 2517
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setSaturation(I)V

    .line 2521
    :cond_9
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_contrast_key"

    const v3, 0x7f0c00c1

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2524
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2525
    const-string v2, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Contrast value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    if-ltz v1, :cond_a

    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxContrast()I

    move-result v2

    if-gt v1, v2, :cond_a

    .line 2527
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setContrast(I)V

    .line 2531
    :cond_a
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_sharpness_key"

    const v3, 0x7f0c00bf

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2534
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxSharpness()I

    move-result v2

    div-int/lit8 v2, v2, 0x6

    mul-int/2addr v1, v2

    .line 2536
    const-string v2, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sharpness value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    if-ltz v1, :cond_b

    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxSharpness()I

    move-result v2

    if-gt v1, v2, :cond_b

    .line 2538
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setSharpness(I)V

    .line 2542
    :cond_b
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_autoexposure_key"

    const v3, 0x7f0c000d

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2545
    const-string v2, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autoExposure value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedAutoexposure()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2547
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposure(Ljava/lang/String;)V

    .line 2551
    :cond_c
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_antibanding_key"

    const v3, 0x7f0c0084

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2554
    const-string v2, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "antiBanding value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2556
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 2559
    :cond_d
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_zsl_key"

    const v3, 0x7f0c002b

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2561
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2563
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/camera/Camera;->mSnapshotMode:I

    .line 2564
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v5}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    .line 2565
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1, v5}, Lcom/android/camera/FocusManager;->setZslEnable(Z)V

    .line 2568
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2569
    const-string v2, "pref_camera_ae_bracket_hdr_key"

    const v3, 0x7f0c0055

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2570
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2578
    :cond_e
    :goto_4
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_facedetection_key"

    const v3, 0x7f0c0040

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2582
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFaceDetectionModes()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2583
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setFaceDetectionMode(Ljava/lang/String;)V

    .line 2584
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    if-nez v2, :cond_f

    .line 2585
    iput-boolean v5, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    .line 2586
    invoke-virtual {p0}, Lcom/android/camera/Camera;->startFaceDetection()V

    .line 2588
    :cond_f
    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    if-ne v1, v5, :cond_10

    .line 2589
    invoke-virtual {p0}, Lcom/android/camera/Camera;->stopFaceDetection()V

    .line 2590
    iput-boolean v6, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    .line 2595
    :cond_10
    const-string v1, "party"

    iget-object v2, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "portrait"

    iget-object v2, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2599
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yyan set tone bar: mSceneMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mSeekBarInitialized:Z

    if-ne v0, v5, :cond_12

    .line 2601
    invoke-direct {p0}, Lcom/android/camera/Camera;->setSkinToneFactor()V

    .line 2605
    :cond_12
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_histogram_key"

    const v2, 0x7f0c00d6

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2608
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedHistogramModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_13

    .line 2611
    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2612
    new-instance v0, Lcom/android/camera/Camera$8;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$8;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2618
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mStatsCallback:Lcom/android/camera/Camera$StatsCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setHistogramMode(Landroid/hardware/Camera$CameraDataCallback;)V

    .line 2619
    sput-boolean v5, Lcom/android/camera/Camera;->mHiston:Z

    .line 2631
    :cond_13
    :goto_5
    return-void

    .line 2390
    :cond_14
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "touch-off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setTouchAfAec(Ljava/lang/String;)V

    .line 2391
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    goto/16 :goto_0

    .line 2397
    :cond_15
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mTouchAfAecFlag:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 2398
    :catch_0
    move-exception v0

    .line 2399
    const-string v0, "camera"

    const-string v1, "Handled NULL pointer Exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2420
    :cond_16
    const-string v3, "100"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    const/16 v3, 0xc80

    if-ge v2, v3, :cond_1

    .line 2423
    :cond_17
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    goto/16 :goto_2

    .line 2453
    :cond_18
    const v2, 0x7f0c0057

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2454
    const-string v0, "persist.capture.burst.exposures"

    const-string v2, "0,0,0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2455
    const-string v2, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture-burst-exposures = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_19

    .line 2457
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "capture-burst-exposures"

    invoke-virtual {v2, v3, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    :cond_19
    if-eqz v0, :cond_3

    .line 2460
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2461
    if-eqz v0, :cond_3

    .line 2462
    const-string v2, ""

    .line 2463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2464
    const-string v2, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "num-snaps-per-shutter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "num-snaps-per-shutter"

    invoke-virtual {v2, v3, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2469
    :cond_1a
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "num-snaps-per-shutter"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2571
    :cond_1b
    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2572
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/Camera;->mSnapshotMode:I

    .line 2573
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    .line 2574
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1, v6}, Lcom/android/camera/FocusManager;->setZslEnable(Z)V

    goto/16 :goto_4

    .line 2621
    :cond_1c
    sput-boolean v6, Lcom/android/camera/Camera;->mHiston:Z

    .line 2622
    new-instance v0, Lcom/android/camera/Camera$9;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$9;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2628
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setHistogramMode(Landroid/hardware/Camera$CameraDataCallback;)V

    goto/16 :goto_5
.end method

.method private resetExposureCompensation()V
    .locals 5

    .prologue
    .line 514
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_exposure_key"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, value:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 517
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 518
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_exposure_key"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 519
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 521
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 3014
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3015
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 3016
    return-void
.end method

.method private restorePreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3042
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3043
    iput v1, p0, Lcom/android/camera/Camera;->mZoomValue:I

    .line 3044
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    .line 3045
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setZoomIndex(I)V

    .line 3047
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v0, :cond_1

    .line 3048
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlContainer;->dismissSettingPopup()Z

    .line 3049
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {p0, v0, v1}, Lcom/android/camera/CameraSettings;->restorePreferences(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V

    .line 3051
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlContainer;->reloadPreferences()V

    .line 3052
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onSharedPreferenceChanged()V

    .line 3054
    :cond_1
    return-void
.end method

.method private setCameraParameters(I)V
    .locals 2
    .parameter "updateSet"

    .prologue
    .line 2802
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 2803
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersInitialize()V

    .line 2806
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 2807
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersZoom()V

    .line 2810
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 2811
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersPreference()V

    .line 2814
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2815
    return-void
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 2820
    iget v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    .line 2821
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 2824
    iput v2, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    .line 2845
    :cond_0
    :goto_0
    return-void

    .line 2826
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2827
    iget v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 2828
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_2

    .line 2829
    const-string v0, "camera"

    const-string v1, "Restarting Preview..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 2831
    invoke-virtual {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    .line 2832
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 2833
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2835
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 2836
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateSceneModeUI()V

    .line 2837
    iput v2, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    goto :goto_0

    .line 2839
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2840
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setCameraState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1355
    iput p1, p0, Lcom/android/camera/Camera;->mCameraState:I

    .line 1356
    packed-switch p1, :pswitch_data_0

    .line 1367
    :goto_0
    return-void

    .line 1361
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->enableCameraControls(Z)V

    goto :goto_0

    .line 1364
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->enableCameraControls(Z)V

    goto :goto_0

    .line 1356
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 2242
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    .line 2243
    iget v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    .line 2244
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    .line 2245
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 2246
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v1, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 2248
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v1, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setDisplayOrientation(I)V

    .line 2249
    return-void
.end method

.method private setOrientationIndicator(IZ)V
    .locals 7
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 1616
    const/16 v5, 0x9

    new-array v3, v5, [Lcom/android/camera/ui/Rotatable;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/Camera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/camera/Camera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    aput-object v6, v3, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    aput-object v6, v3, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    aput-object v6, v3, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    aput-object v6, v3, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    aput-object v6, v3, v5

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/android/camera/Camera;->mOnScreenIndicators:Lcom/android/camera/ui/Rotatable;

    aput-object v6, v3, v5

    .line 1619
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

    .line 1620
    .local v2, indicator:Lcom/android/camera/ui/Rotatable;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 1619
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1627
    .end local v2           #indicator:Lcom/android/camera/ui/Rotatable;
    :cond_1
    iget-object v5, p0, Lcom/android/camera/Camera;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    instance-of v5, v5, Lcom/android/camera/ui/RotateLayout;

    if-eqz v5, :cond_2

    .line 1628
    iget-object v5, p0, Lcom/android/camera/Camera;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    invoke-interface {v5, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 1630
    :cond_2
    return-void
.end method

.method private setSkinToneFactor()V
    .locals 4

    .prologue
    .line 3143
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->skinToneSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_1

    .line 3171
    :cond_0
    :goto_0
    return-void

    .line 3144
    :cond_1
    const-string v0, "enable"

    .line 3145
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedSkinToneEnhancementModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3147
    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3148
    const/4 v0, 0x0

    .line 3151
    iget v1, p0, Lcom/android/camera/Camera;->mskinToneValue:I

    if-nez v1, :cond_2

    .line 3152
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_skinToneEnhancement_factor_key"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3153
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3156
    :cond_2
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "yyan Skin tone bar: enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/Camera;->mskinToneValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    invoke-direct {p0}, Lcom/android/camera/Camera;->enableSkinToneSeekBar()V

    .line 3159
    if-eqz v0, :cond_0

    .line 3160
    iget v1, p0, Lcom/android/camera/Camera;->SCE_FACTOR_STEP:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    .line 3161
    iget-object v1, p0, Lcom/android/camera/Camera;->skinToneSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 3164
    :cond_3
    const-string v0, "camera"

    const-string v1, "yyan Skin tone bar: disable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    invoke-direct {p0}, Lcom/android/camera/Camera;->disableSkinToneSeekBar()V

    goto :goto_0

    .line 3168
    :cond_4
    const-string v0, "camera"

    const-string v1, "yyan Skin tone bar: Not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    iget-object v0, p0, Lcom/android/camera/Camera;->skinToneSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 2859
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2860
    if-eqz v1, :cond_0

    .line 2861
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 2862
    const-string v0, "crop"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 2864
    :cond_0
    return-void
.end method

.method private showPostCaptureAlert()V
    .locals 1

    .prologue
    .line 2867
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 2868
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2869
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2871
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2872
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2874
    :cond_0
    return-void
.end method

.method private showTapToFocusToast()V
    .locals 3

    .prologue
    .line 3072
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    const v1, 0x7f0c0161

    iget v2, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 3074
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3075
    const-string v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3076
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3077
    return-void
.end method

.method private showTapToFocusToastIfNeeded()V
    .locals 4

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 582
    :cond_0
    return-void
.end method

.method private startPreview()V
    .locals 6

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 2254
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 2266
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 2268
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->setDisplayOrientation()V

    .line 2269
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 2271
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    if-nez v0, :cond_2

    .line 2274
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2275
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2277
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setAeAwbLock(Z)V

    .line 2279
    :cond_2
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 2281
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2282
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v1

    .line 2283
    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v2

    .line 2284
    const-string v3, "camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New Width x New Height : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    const-string v3, "camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Old Width x New Height : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    const-string v3, "camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCameraDisplayOrientation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    iget v3, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-eqz v3, :cond_3

    .line 2288
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    .line 2289
    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    iput v4, v0, Landroid/hardware/Camera$Size;->width:I

    .line 2290
    iput v3, v0, Landroid/hardware/Camera$Size;->height:I

    .line 2292
    :cond_3
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v1, v3, :cond_4

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    if-eq v2, v1, :cond_5

    .line 2293
    :cond_4
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 2294
    invoke-virtual {p0}, Lcom/android/camera/Camera;->notifyScreenNailChanged()V

    .line 2296
    :cond_5
    iget-object v0, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_6

    .line 2297
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 2298
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2301
    :cond_6
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 2302
    const-string v0, "camera"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 2305
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStarted()V

    .line 2307
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    if-eqz v0, :cond_7

    .line 2308
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/Camera;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2310
    :cond_7
    return-void
.end method

.method private stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2313
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_0

    .line 2314
    const-string v0, "camera"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 2316
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2317
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 2318
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 2320
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2321
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 2322
    :cond_1
    return-void
.end method

.method private switchCamera()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2953
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2998
    :goto_0
    return-void

    .line 2955
    :cond_0
    const-string v0, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start to switch camera. id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    iget v0, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    iput v0, p0, Lcom/android/camera/Camera;->mCameraId:I

    .line 2957
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    .line 2958
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    iget v3, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/CameraPicker;->setCameraId(I)V

    .line 2961
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 2962
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2963
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

    .line 2964
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 2965
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 2968
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v3, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-virtual {v0, p0, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 2969
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 2970
    new-instance v0, Lcom/android/camera/ActivityBase$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$CameraOpenThread;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 2971
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->start()V

    .line 2973
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2977
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeCapabilities()V

    .line 2978
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v3, p0, Lcom/android/camera/Camera;->mCameraId:I

    aget-object v0, v0, v3

    .line 2979
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v1, :cond_3

    move v0, v1

    .line 2980
    :goto_2
    iget-object v3, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v3, v0}, Lcom/android/camera/FocusManager;->setMirror(Z)V

    .line 2981
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v3, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2982
    invoke-virtual {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    .line 2983
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 2984
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2985
    invoke-virtual {p0}, Lcom/android/camera/Camera;->startFaceDetection()V

    .line 2986
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeIndicatorControl()V

    .line 2989
    iget v0, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-direct {p0, v0, v2}, Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V

    .line 2991
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeZoom()V

    .line 2992
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateOnScreenIndicators()V

    .line 2993
    invoke-direct {p0}, Lcom/android/camera/Camera;->showTapToFocusToastIfNeeded()V

    .line 2997
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 2979
    goto :goto_2

    .line 2974
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private switchToOtherMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 2889
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2895
    :goto_0
    return-void

    .line 2890
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->waitDone()V

    .line 2891
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-static {v0}, Lcom/android/camera/ThumbnailHolder;->keep(Lcom/android/camera/Thumbnail;)V

    .line 2892
    :cond_2
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    .line 2893
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2894
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0
.end method

.method private updateCameraParametersInitialize()V
    .locals 3

    .prologue
    .line 2332
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 2333
    if-eqz v0, :cond_0

    .line 2334
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2335
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 2338
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 2342
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2343
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2344
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    :cond_1
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2634
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 2635
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 2638
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mAwbLockSupported:Z

    if-eqz v0, :cond_1

    .line 2639
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 2642
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    if-eqz v0, :cond_2

    .line 2643
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 2646
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_3

    .line 2648
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 2651
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_picturesize_key"

    invoke-virtual {v0, v1, v6}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2654
    if-nez v0, :cond_a

    .line 2655
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {p0, v0}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 2669
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2673
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 2674
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {p0, v1, v2, v3}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2676
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2677
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2678
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2681
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2682
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2687
    :cond_5
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_scenemode_key"

    const v3, 0x7f0c0142

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    .line 2690
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSceneMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2692
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2693
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 2698
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2699
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2709
    :cond_6
    :goto_1
    iget v1, p0, Lcom/android/camera/Camera;->mCameraId:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v1

    .line 2711
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2717
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;)I

    move-result v1

    .line 2718
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v2

    .line 2719
    iget-object v3, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v3

    .line 2720
    if-lt v1, v3, :cond_c

    if-gt v1, v2, :cond_c

    .line 2721
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 2726
    :goto_2
    const-string v1, "auto"

    iget-object v2, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2728
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_flashmode_key"

    const v3, 0x7f0c0134

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2731
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    .line 2732
    invoke-static {v1, v2}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2733
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2743
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_whitebalance_key"

    const v3, 0x7f0c013b

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2746
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2748
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2757
    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1, v6}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 2758
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2763
    :goto_5
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mContinousFocusSupported:Z

    if-eqz v1, :cond_9

    .line 2764
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "continuous-picture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2765
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/Camera;->mAutoFocusMoveCallback:Lcom/android/camera/Camera$AutoFocusMoveCallback;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 2771
    :cond_9
    :goto_6
    invoke-direct {p0}, Lcom/android/camera/Camera;->qcomUpdateCameraParametersPreference()V

    .line 2773
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {p0, v1, v0}, Lcom/android/camera/Camera;->updateCameraScreenNailSize(II)V

    .line 2774
    return-void

    .line 2657
    :cond_a
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2658
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v2

    .line 2659
    iget-object v3, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v2, v3}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    .line 2661
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2662
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 2663
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_4

    .line 2664
    const-string v0, "camera"

    const-string v1, "Picture Size changed. Restart Preview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    goto/16 :goto_0

    .line 2702
    :cond_b
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    .line 2703
    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 2704
    const-string v1, "auto"

    iput-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_1

    .line 2723
    :cond_c
    const-string v2, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid exposure range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2735
    :cond_d
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 2736
    if-nez v1, :cond_7

    .line 2737
    const v1, 0x7f0c0135

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    goto/16 :goto_3

    .line 2750
    :cond_e
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v1

    .line 2751
    if-nez v1, :cond_8

    .line 2752
    const-string v1, "auto"

    goto/16 :goto_4

    .line 2760
    :cond_f
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2767
    :cond_10
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v6}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto/16 :goto_6
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 2350
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2351
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/Camera;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2353
    :cond_0
    return-void
.end method

.method private updateCameraScreenNailSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2778
    iget v3, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-eqz v3, :cond_0

    .line 2779
    move v2, p1

    .line 2780
    .local v2, tmp:I
    move p1, p2

    .line 2781
    move p2, v2

    .line 2784
    .end local v2           #tmp:I
    :cond_0
    iget-object v3, p0, Lcom/android/camera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v1

    .line 2785
    .local v1, oldWidth:I
    iget-object v3, p0, Lcom/android/camera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v0

    .line 2787
    .local v0, oldHeight:I
    if-ne v1, p1, :cond_1

    if-eq v0, p2, :cond_2

    .line 2788
    :cond_1
    iget-object v3, p0, Lcom/android/camera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 2789
    invoke-virtual {p0}, Lcom/android/camera/Camera;->notifyScreenNailChanged()V

    .line 2792
    :cond_2
    iget-object v3, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v3, :cond_3

    .line 2793
    iget-object v3, p0, Lcom/android/camera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 2794
    iget-object v3, p0, Lcom/android/camera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2796
    :cond_3
    return-void
.end method

.method private updateExposureOnScreenIndicator(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 762
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureIndicator:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 777
    :goto_0
    return-void

    .line 765
    :cond_0
    if-nez p1, :cond_1

    .line 766
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureIndicator:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureIndicator:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    .line 770
    iget-object v1, p0, Lcom/android/camera/Camera;->mFormatterArgs:[Ljava/lang/Object;

    int-to-float v2, p1

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v1, v3

    .line 771
    iget-object v0, p0, Lcom/android/camera/Camera;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/Camera;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 772
    iget-object v0, p0, Lcom/android/camera/Camera;->mFormatter:Ljava/util/Formatter;

    const-string v1, "%+1.1f"

    iget-object v2, p0, Lcom/android/camera/Camera;->mFormatterArgs:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 773
    iget-object v0, p0, Lcom/android/camera/Camera;->mFormatter:Ljava/util/Formatter;

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 774
    iget-object v1, p0, Lcom/android/camera/Camera;->mExposureIndicator:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    iget-object v0, p0, Lcom/android/camera/Camera;->mExposureIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateFlashOnScreenIndicator(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 780
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 796
    :goto_0
    return-void

    .line 783
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 786
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 787
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 788
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 789
    :cond_3
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 790
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 793
    :cond_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateFocusOnScreenIndicator(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 830
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 847
    :goto_0
    return-void

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_focusmode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 835
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 838
    const-string v0, "infinity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 839
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 840
    :cond_2
    const-string v0, "macro"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 841
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 844
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateOnScreenIndicators()V
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->updateSceneOnScreenIndicator(Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->updateExposureOnScreenIndicator(I)V

    .line 852
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->updateFlashOnScreenIndicator(Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->updateWhiteBalanceOnScreenIndicator(Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->updateFocusOnScreenIndicator(Ljava/lang/String;)V

    .line 855
    return-void
.end method

.method private updateSceneModeUI()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1521
    const-string v0, "auto"

    iget-object v2, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getTouchAfAec()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getAutoExposure()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Camera;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    .line 1527
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Camera;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSceneOnScreenIndicator(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 799
    iget-object v0, p0, Lcom/android/camera/Camera;->mSceneIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 804
    :goto_0
    return-void

    .line 802
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 803
    :goto_1
    iget-object v2, p0, Lcom/android/camera/Camera;->mSceneIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 802
    goto :goto_1
.end method

.method private updateWhiteBalanceOnScreenIndicator(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 807
    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 827
    :goto_0
    return-void

    .line 810
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 811
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 813
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 814
    const-string v0, "fluorescent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 815
    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 816
    :cond_3
    const-string v0, "incandescent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 817
    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 818
    :cond_4
    const-string v0, "daylight"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 819
    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 820
    :cond_5
    const-string v0, "cloudy-daylight"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 821
    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 824
    :cond_6
    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .prologue
    .line 2099
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mFocusStartTime:J

    .line 2100
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 2101
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2102
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 2106
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2107
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2108
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 2109
    return-void
.end method

.method public capture()Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 1372
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v0, v8, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v7

    .line 1418
    :goto_0
    return v0

    .line 1376
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/Camera;->mCaptureStartTime:J

    .line 1377
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    .line 1378
    iput-object v1, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 1381
    iget v0, p0, Lcom/android/camera/Camera;->mCameraId:I

    iget v2, p0, Lcom/android/camera/Camera;->mOrientation:I

    invoke-static {v0, v2}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    .line 1382
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1383
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "picture-format"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1385
    if-eqz v0, :cond_4

    const-string v2, "jpeg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1387
    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1389
    :goto_1
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1390
    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1392
    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/Camera;->mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

    iget-object v4, p0, Lcom/android/camera/Camera;->mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

    iget-object v5, p0, Lcom/android/camera/Camera;->mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

    new-instance v6, Lcom/android/camera/Camera$JpegPictureCallback;

    invoke-direct {v6, p0, v0}, Lcom/android/camera/Camera$JpegPictureCallback;-><init>(Lcom/android/camera/Camera;Landroid/location/Location;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1395
    sget-boolean v0, Lcom/android/camera/Camera;->mHiston:Z

    if-eqz v0, :cond_2

    .line 1396
    sput-boolean v7, Lcom/android/camera/Camera;->mHiston:Z

    .line 1397
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setHistogramMode(Landroid/hardware/Camera$CameraDataCallback;)V

    .line 1398
    new-instance v0, Lcom/android/camera/Camera$6;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$6;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1406
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 1407
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    iget-object v1, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/android/camera/Camera;->mCaptureStartTime:J

    iget v4, v5, Landroid/hardware/Camera$Size;->width:I

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    iget v6, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/Camera$ImageNamer;->prepareUri(Landroid/content/ContentResolver;JIII)V

    .line 1410
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_3

    .line 1412
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    .line 1414
    :cond_3
    iput-boolean v7, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 1415
    invoke-direct {p0, v8}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1416
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "num-snaps-per-shutter"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mBurstSnapNum:I

    .line 1417
    iput v7, p0, Lcom/android/camera/Camera;->mReceivedSnapNum:I

    .line 1418
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "m"

    .prologue
    .line 681
    iget v3, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    .line 709
    :goto_0
    return v3

    .line 684
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 685
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 686
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 689
    .local v2, y:F
    iget-object v3, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 690
    iget-object v3, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v3}, Lcom/android/camera/ModePicker;->dismissModeSelection()Z

    .line 694
    :cond_1
    iget-object v3, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v3, :cond_2

    .line 695
    iget-object v3, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v3}, Lcom/android/camera/ui/IndicatorControlContainer;->getActiveSettingPopup()Landroid/view/View;

    move-result-object v0

    .line 696
    .local v0, popup:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 700
    invoke-static {v1, v2, v0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 703
    iget-object v3, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v3}, Lcom/android/camera/ui/IndicatorControlContainer;->dismissSettingPopup()Z

    .line 709
    .end local v0           #popup:Landroid/view/View;
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_2
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method protected getCamera()Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1

    .prologue
    .line 2094
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method public hideGpsOnScreenIndicator()V
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 759
    :goto_0
    return-void

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2068
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 2069
    packed-switch p1, :pswitch_data_0

    .line 2087
    :goto_0
    return-void

    .line 2071
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2072
    if-eqz p3, :cond_0

    .line 2073
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2074
    if-eqz v1, :cond_0

    .line 2075
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2078
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/android/camera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 2079
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 2081
    const-string v0, "crop-temp"

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2082
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 2069
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 2136
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2142
    :cond_0
    :goto_0
    return-void

    .line 2139
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2140
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)V
    .locals 3
    .parameter

    .prologue
    .line 2941
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2950
    :cond_0
    :goto_0
    return-void

    .line 2943
    :cond_1
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to copy texture. cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->copyTexture()V

    .line 2947
    iput p1, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    .line 2949
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2024
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2025
    invoke-direct {p0}, Lcom/android/camera/Camera;->setDisplayOrientation()V

    .line 2026
    invoke-virtual {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutOrientation()V

    .line 2028
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2029
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2032
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2033
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2034
    const v4, 0x7f040031

    invoke-virtual {v1, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2035
    const v4, 0x7f040008

    invoke-virtual {v1, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2038
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeControlByIntent()V

    .line 2039
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFocusManager()V

    .line 2040
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeMiscControls()V

    .line 2041
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeIndicatorControl()V

    .line 2042
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    .line 2044
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setFocusAreaIndicator(Landroid/view/View;)V

    .line 2047
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->updateThumbnailView()V

    .line 2050
    :cond_0
    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 2051
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 2052
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 2053
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeZoom()V

    .line 2054
    invoke-direct {p0}, Lcom/android/camera/Camera;->initOnScreenIndicator()V

    .line 2055
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateOnScreenIndicators()V

    .line 2056
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 2057
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 2058
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v1, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 2059
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/Camera;->mCameraId:I

    aget-object v0, v0, v1

    .line 2060
    iget-object v1, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v3, :cond_2

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 2061
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 2062
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 2063
    return-void

    :cond_1
    move v1, v3

    .line 2029
    goto/16 :goto_0

    :cond_2
    move v3, v2

    .line 2060
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 1448
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 1449
    new-instance v0, Lcom/android/camera/ComboPreferences;

    invoke-direct {v0, p0}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 1450
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 1451
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mCameraId:I

    .line 1452
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    .line 1456
    new-instance v0, Lcom/android/camera/Camera$CameraStartUpThread;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$CameraStartUpThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 1457
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/Camera$CameraStartUpThread;->start()V

    .line 1459
    const v0, 0x7f040007

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setContentView(I)V

    .line 1463
    invoke-direct {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    .line 1464
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->createCameraScreenNail(Z)V

    .line 1466
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v2, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-virtual {v0, p0, v2}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 1467
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 1468
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    .line 1471
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetExposureCompensation()V

    .line 1474
    iget-object v0, p0, Lcom/android/camera/Camera;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1476
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeControlByIntent()V

    .line 1477
    new-instance v0, Lcom/android/camera/RotateDialogController;

    const v2, 0x7f040037

    invoke-direct {v0, p0, v2}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 1478
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mNumberOfCameras:I

    .line 1479
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mQuickCapture:Z

    .line 1480
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeMiscControls()V

    .line 1481
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/Camera;->brightnessProgressBar:Landroid/widget/ProgressBar;

    .line 1482
    iget-object v0, p0, Lcom/android/camera/Camera;->brightnessProgressBar:Landroid/widget/ProgressBar;

    instance-of v0, v0, Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/android/camera/Camera;->brightnessProgressBar:Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/SeekBar;

    .line 1484
    iget-object v2, p0, Lcom/android/camera/Camera;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1486
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->brightnessProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1487
    iget-object v0, p0, Lcom/android/camera/Camera;->brightnessProgressBar:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/android/camera/Camera;->mbrightness:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1488
    iget-object v0, p0, Lcom/android/camera/Camera;->brightnessProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1489
    const v0, 0x7f0b0068

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/camera/Camera;->skinToneSeekBar:Landroid/widget/SeekBar;

    .line 1490
    iget-object v0, p0, Lcom/android/camera/Camera;->skinToneSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/camera/Camera;->mskinToneSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1491
    iget-object v0, p0, Lcom/android/camera/Camera;->skinToneSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1492
    const v0, 0x7f0b0067

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/Camera;->Title:Landroid/widget/TextView;

    .line 1493
    const v0, 0x7f0b006a

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/Camera;->RightValue:Landroid/widget/TextView;

    .line 1494
    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/Camera;->LeftValue:Landroid/widget/TextView;

    .line 1495
    new-instance v0, Lcom/android/camera/LocationManager;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 1496
    invoke-direct {p0}, Lcom/android/camera/Camera;->initOnScreenIndicator()V

    .line 1498
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->enableCameraControls(Z)V

    .line 1499
    return-void

    :cond_1
    move v0, v1

    .line 1464
    goto/16 :goto_0
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 1
    .parameter "faces"
    .parameter "camera"

    .prologue
    .line 3068
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setFaces([Landroid/hardware/Camera$Face;)V

    .line 3069
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 2146
    sparse-switch p1, :sswitch_data_0

    .line 2212
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    .line 2148
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 2149
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->onShutterButtonFocus(Z)V

    goto :goto_1

    .line 2153
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 2154
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onShutterButtonClick()V

    goto :goto_1

    .line 2158
    :sswitch_2
    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getCurrentFocusState()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getCurrentFocusState()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eq v0, v4, :cond_0

    .line 2161
    iget v0, p0, Lcom/android/camera/Camera;->mbrightness:I

    if-lez v0, :cond_2

    .line 2162
    iget v0, p0, Lcom/android/camera/Camera;->mbrightness:I

    iget v1, p0, Lcom/android/camera/Camera;->mbrightness_step:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/Camera;->mbrightness:I

    .line 2165
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2166
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "luma-adaptation"

    iget v2, p0, Lcom/android/camera/Camera;->mbrightness:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2170
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->brightnessProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/camera/Camera;->mbrightness:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2171
    iget-object v0, p0, Lcom/android/camera/Camera;->brightnessProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 2176
    :sswitch_3
    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getCurrentFocusState()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getCurrentFocusState()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eq v0, v4, :cond_0

    .line 2179
    iget v0, p0, Lcom/android/camera/Camera;->mbrightness:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_3

    .line 2180
    iget v0, p0, Lcom/android/camera/Camera;->mbrightness:I

    iget v1, p0, Lcom/android/camera/Camera;->mbrightness_step:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/Camera;->mbrightness:I

    .line 2183
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2184
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "luma-adaptation"

    iget v2, p0, Lcom/android/camera/Camera;->mbrightness:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2188
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->brightnessProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/camera/Camera;->mbrightness:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2189
    iget-object v0, p0, Lcom/android/camera/Camera;->brightnessProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 2196
    :sswitch_4
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 2200
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2201
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->onShutterButtonFocus(Z)V

    .line 2202
    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2203
    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->requestFocusFromTouch()Z

    .line 2207
    :goto_2
    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    goto/16 :goto_1

    .line 2205
    :cond_4
    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    goto :goto_2

    .line 2146
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x1b -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2217
    packed-switch p1, :pswitch_data_0

    .line 2224
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2219
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 2220
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->onShutterButtonFocus(Z)V

    .line 2222
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2217
    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch
.end method

.method public onModeChanged(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 2899
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->switchToOtherMode(I)V

    .line 2900
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1906
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    .line 1907
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 1910
    invoke-virtual {p0}, Lcom/android/camera/Camera;->waitCameraStartUpThread()V

    .line 1912
    iget-object v0, p0, Lcom/android/camera/Camera;->mGraphView:Lcom/android/camera/GraphView;

    if-eqz v0, :cond_0

    .line 1913
    iget-object v0, p0, Lcom/android/camera/Camera;->mGraphView:Lcom/android/camera/GraphView;

    invoke-virtual {v0, v1}, Lcom/android/camera/GraphView;->setCameraObject(Lcom/android/camera/Camera;)V

    .line 1915
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 1917
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 1918
    iget-object v0, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 1919
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1920
    iput-object v1, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1922
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_2

    .line 1923
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 1924
    iput-object v1, p0, Lcom/android/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    .line 1926
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetScreenOn()V

    .line 1929
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

    .line 1930
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1932
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_4

    .line 1933
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/Camera$MyOrientationEventListener;->disable()V

    .line 1934
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    if-eqz v0, :cond_4

    .line 1935
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->finish()V

    .line 1936
    iput-object v1, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    .line 1937
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageNamer;->finish()V

    .line 1938
    iput-object v1, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    .line 1942
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    if-eqz v0, :cond_5

    .line 1943
    iget-object v0, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1944
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 1946
    :cond_5
    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1947
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->updateExposureOnScreenIndicator(I)V

    .line 1951
    iput-object v1, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 1954
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1955
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1956
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1957
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1958
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1959
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1960
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1961
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1963
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    .line 1964
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 1965
    :cond_7
    return-void
.end method

.method protected onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 3004
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3005
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 3026
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3038
    :goto_0
    return-void

    .line 3027
    :cond_0
    new-instance v4, Lcom/android/camera/Camera$10;

    invoke-direct {v4, p0}, Lcom/android/camera/Camera$10;-><init>(Lcom/android/camera/Camera;)V

    .line 3033
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    const v2, 0x7f0c0109

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v5, 0x104

    invoke-virtual {p0, v5}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1848
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mPaused:Z

    .line 1849
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 1850
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 1889
    :cond_0
    :goto_0
    return-void

    .line 1852
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    .line 1853
    iput v2, p0, Lcom/android/camera/Camera;->mZoomValue:I

    .line 1856
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    if-nez v0, :cond_2

    .line 1857
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetExposureCompensation()V

    .line 1858
    new-instance v0, Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-direct {v0, p0, v4}, Lcom/android/camera/Camera$CameraStartUpThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 1859
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/Camera$CameraStartUpThread;->start()V

    .line 1862
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getLastThumbnail()V

    .line 1866
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mSkinToneSeekBar:Z

    if-eq v0, v3, :cond_4

    .line 1868
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send tone bar: mSkinToneSeekBar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mSkinToneSeekBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1874
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-nez v0, :cond_5

    .line 1875
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1879
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 1882
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 1884
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    if-nez v0, :cond_0

    .line 1885
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    .line 1887
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, v3}, Landroid/media/MediaActionSound;->load(I)V

    goto :goto_0

    .line 1877
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeSecondTime()V

    goto :goto_1
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1674
    invoke-direct {p0}, Lcom/android/camera/Camera;->doCancel()V

    .line 1675
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1668
    invoke-direct {p0}, Lcom/android/camera/Camera;->doAttach()V

    .line 1669
    return-void
.end method

.method public onReviewRetakeClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1657
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1663
    :goto_0
    return-void

    .line 1659
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->hidePostCaptureAlert()V

    .line 1660
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 1661
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1662
    invoke-virtual {p0}, Lcom/android/camera/Camera;->startFaceDetection()V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2905
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-eqz v0, :cond_1

    .line 2937
    :cond_0
    :goto_0
    return-void

    .line 2907
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 2909
    iget-object v1, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 2911
    invoke-direct {p0}, Lcom/android/camera/Camera;->needRestart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2912
    const-string v0, "camera"

    const-string v1, "Restarting Preview... Camera Mode Changhed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2913
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 2914
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 2915
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2916
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 2918
    :cond_2
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    .line 2919
    invoke-virtual {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    .line 2920
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateOnScreenIndicators()V

    .line 2921
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mSeekBarInitialized:Z

    if-ne v0, v2, :cond_0

    .line 2922
    const-string v0, "camera"

    const-string v1, "yyan onSharedPreferenceChanged Skin tone bar: change"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_coloreffect_key"

    const v2, 0x7f0c0089

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2928
    const-string v1, "party"

    iget-object v2, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "portrait"

    iget-object v2, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2934
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/Camera;->disableSkinToneSeekBar()V

    goto :goto_0
.end method

.method public onShutterButtonClick()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1776
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-nez v0, :cond_1

    .line 1832
    :cond_0
    :goto_0
    return-void

    .line 1781
    :cond_1
    iget-wide v0, p0, Lcom/android/camera/Camera;->mStorageSpace:J

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 1782
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space or storage not ready. remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/Camera;->mStorageSpace:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1785
    :cond_2
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonClick: mCameraState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    const-string v0, "null"

    .line 1789
    iget v1, p0, Lcom/android/camera/Camera;->mSnapshotMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 1790
    const-string v0, "camera.capture.flashing"

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1791
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flashing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1793
    const-string v1, "camera"

    const-string v2, "ZSL change false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1795
    const-string v2, "pref_camera_zsl_key"

    const-string v3, "off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1796
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1798
    iput v6, p0, Lcom/android/camera/Camera;->mSnapshotMode:I

    .line 1799
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    .line 1800
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1, v4}, Lcom/android/camera/FocusManager;->setZslEnable(Z)V

    .line 1801
    const-string v1, "camera"

    const-string v2, "Restarting Preview... Camera Mode Changhed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 1803
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 1804
    invoke-direct {p0, v5}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1805
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mRestartPreview:Z

    .line 1818
    :goto_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-ne v1, v6, :cond_6

    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_6

    .line 1820
    iput-boolean v5, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    goto/16 :goto_0

    .line 1807
    :cond_4
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1, v5}, Lcom/android/camera/FocusManager;->setZslEnable(Z)V

    goto :goto_1

    .line 1810
    :cond_5
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1, v4}, Lcom/android/camera/FocusManager;->setZslEnable(Z)V

    goto :goto_1

    .line 1824
    :cond_6
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    .line 1825
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->doSnap()V

    .line 1827
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1828
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1829
    const-string v1, "pref_camera_zsl_key"

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1830
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 2
    .parameter "pressed"

    .prologue
    .line 1760
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-nez v0, :cond_1

    .line 1772
    :cond_0
    :goto_0
    return-void

    .line 1765
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/Camera;->canTakePicture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1767
    :cond_2
    if-eqz p1, :cond_3

    .line 1768
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterDown()V

    goto :goto_0

    .line 1770
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterUp()V

    goto :goto_0
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2114
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-nez v0, :cond_1

    .line 2132
    :cond_0
    :goto_0
    return-void

    .line 2122
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2125
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mTouchAfAecFlag:Z

    if-eqz v0, :cond_0

    .line 2129
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 2131
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/FocusManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onSizeChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3094
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 3095
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1634
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onStop()V

    .line 1635
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 1636
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1637
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 1639
    :cond_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1648
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_1

    .line 1649
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->waitDone()V

    .line 1650
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->gotoGallery()V

    .line 1652
    :cond_1
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 3009
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onUserInteraction()V

    .line 3010
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 3011
    return-void
.end method

.method public playSound(I)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, p1}, Landroid/media/MediaActionSound;->play(I)V

    .line 1433
    return-void
.end method

.method public setFocusParameters()V
    .locals 1

    .prologue
    .line 1427
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 1428
    return-void
.end method

.method setPreviewFrameLayoutAspectRatio()V
    .locals 6

    .prologue
    .line 3136
    invoke-virtual {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutOrientation()V

    .line 3138
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 3139
    .local v0, size:Landroid/hardware/Camera$Size;
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v2

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 3140
    return-void
.end method

.method setPreviewFrameLayoutOrientation()V
    .locals 6

    .prologue
    const/16 v5, 0xb4

    .line 3098
    const/4 v1, 0x1

    .line 3099
    .local v1, set:Z
    iget-object v3, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 3100
    .local v2, size:Landroid/hardware/Camera$Size;
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/Camera;->mCameraId:I

    aget-object v0, v3, v4

    .line 3102
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-direct {p0}, Lcom/android/camera/Camera;->setDisplayOrientation()V

    .line 3104
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 3105
    iget v3, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    if-ne v3, v5, :cond_2

    .line 3106
    :cond_0
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-eqz v3, :cond_1

    .line 3107
    const/4 v1, 0x0

    .line 3132
    :goto_0
    iget-object v3, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v3, v1}, Lcom/android/camera/PreviewFrameLayout;->setCameraOrientation(Z)V

    .line 3133
    return-void

    .line 3109
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 3112
    :cond_2
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-eqz v3, :cond_3

    .line 3113
    const/4 v1, 0x1

    goto :goto_0

    .line 3115
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 3119
    :cond_4
    iget v3, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    if-ne v3, v5, :cond_7

    .line 3120
    :cond_5
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-eqz v3, :cond_6

    .line 3121
    const/4 v1, 0x1

    goto :goto_0

    .line 3123
    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    .line 3126
    :cond_7
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-eqz v3, :cond_8

    .line 3127
    const/4 v1, 0x0

    goto :goto_0

    .line 3129
    :cond_8
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public showGpsOnScreenIndicator(Z)V
    .locals 2
    .parameter "hasSignal"

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 751
    :goto_0
    return-void

    .line 745
    :cond_0
    if-eqz p1, :cond_1

    .line 746
    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 750
    :goto_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public startFaceDetection()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 651
    iget-boolean v3, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v3, v1, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-object v3, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v3

    if-lez v3, :cond_0

    .line 654
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 655
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 656
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 657
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v4, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 658
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/Camera;->mCameraId:I

    aget-object v0, v3, v4

    .line 659
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v1, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 660
    iget-object v1, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 661
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v2, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 662
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 663
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 659
    goto :goto_1
.end method

.method public stopFaceDetection()V
    .locals 2

    .prologue
    .line 669
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    if-nez v0, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 673
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 674
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 675
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    goto :goto_0
.end method

.method waitCameraStartUpThread()V
    .locals 1

    .prologue
    .line 1893
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    if-eqz v0, :cond_0

    .line 1894
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/Camera$CameraStartUpThread;->cancel()V

    .line 1895
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/Camera$CameraStartUpThread;->join()V

    .line 1896
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 1897
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1902
    :cond_0
    :goto_0
    return-void

    .line 1899
    :catch_0
    move-exception v0

    goto :goto_0
.end method
