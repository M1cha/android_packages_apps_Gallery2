.class public Lcom/android/camera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# static fields
.field private static final MMS_VIDEO_DURATION:I


# instance fields
.field private final mCameraId:I

.field private final mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

.field private final mContext:Landroid/content/Context;

.field private final mParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->duration:I

    :goto_0
    sput v0, Lcom/android/camera/CameraSettings;->MMS_VIDEO_DURATION:I

    return-void

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V
    .locals 0
    .parameter "activity"
    .parameter "parameters"
    .parameter "cameraId"
    .parameter "cameraInfo"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/android/camera/CameraSettings;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 116
    iput p3, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    .line 117
    iput-object p4, p0, Lcom/android/camera/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 118
    return-void
.end method

.method private buildCameraId(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/IconListPreference;)V
    .locals 8
    .parameter "group"
    .parameter "preference"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 351
    iget-object v6, p0, Lcom/android/camera/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    array-length v3, v6

    .line 352
    .local v3, numOfCameras:I
    if-ge v3, v7, :cond_0

    .line 353
    invoke-virtual {p2}, Lcom/android/camera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 369
    :goto_0
    return-void

    .line 357
    :cond_0
    new-array v0, v7, [Ljava/lang/CharSequence;

    .line 358
    .local v0, entryValues:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/camera/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 359
    iget-object v6, p0, Lcom/android/camera/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v6, v6, v1

    iget v6, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v6, v4, :cond_2

    move v2, v4

    .line 363
    .local v2, index:I
    :goto_2
    aget-object v6, v0, v2

    if-nez v6, :cond_4

    .line 364
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    .line 365
    if-ne v2, v4, :cond_3

    move v6, v5

    :goto_3
    aget-object v6, v0, v6

    if-eqz v6, :cond_4

    .line 368
    .end local v2           #index:I
    :cond_1
    invoke-virtual {p2, v0}, Lcom/android/camera/IconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v2, v5

    .line 359
    goto :goto_2

    .restart local v2       #index:I
    :cond_3
    move v6, v4

    .line 365
    goto :goto_3

    .line 358
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private buildExposureCompensation(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)V
    .locals 11
    .parameter "group"
    .parameter "exposure"

    .prologue
    .line 326
    iget-object v9, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v4

    .line 327
    .local v4, max:I
    iget-object v9, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v6

    .line 328
    .local v6, min:I
    if-nez v4, :cond_0

    if-nez v6, :cond_0

    .line 329
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 347
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v9, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v8

    .line 335
    .local v8, step:F
    int-to-float v9, v4

    mul-float/2addr v9, v8

    invoke-static {v9}, Landroid/util/FloatMath;->floor(F)F

    move-result v9

    float-to-int v5, v9

    .line 336
    .local v5, maxValue:I
    int-to-float v9, v6

    mul-float/2addr v9, v8

    invoke-static {v9}, Landroid/util/FloatMath;->ceil(F)F

    move-result v9

    float-to-int v7, v9

    .line 337
    .local v7, minValue:I
    sub-int v9, v5, v7

    add-int/lit8 v9, v9, 0x1

    new-array v1, v9, [Ljava/lang/CharSequence;

    .line 338
    .local v1, entries:[Ljava/lang/CharSequence;
    sub-int v9, v5, v7

    add-int/lit8 v9, v9, 0x1

    new-array v2, v9, [Ljava/lang/CharSequence;

    .line 339
    .local v2, entryValues:[Ljava/lang/CharSequence;
    move v3, v7

    .local v3, i:I
    :goto_1
    if-gt v3, v5, :cond_2

    .line 340
    sub-int v9, v5, v3

    int-to-float v10, v3

    div-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .local v0, builder:Ljava/lang/StringBuilder;
    if-lez v3, :cond_1

    const/16 v9, 0x2b

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    :cond_1
    sub-int v9, v5, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v9

    .line 339
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 345
    .end local v0           #builder:Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {p2, v1}, Lcom/android/camera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 346
    invoke-virtual {p2, v2}, Lcom/android/camera/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private checkSupportedVideoQuality(II)Z
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x1

    .line 612
    iget-object v5, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v3

    .line 613
    .local v3, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v0, 0x0

    .line 614
    .local v0, flag:I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 616
    .local v2, size:Landroid/hardware/Camera$Size;
    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    const/16 v6, 0x1e0

    if-ne v5, v6, :cond_2

    .line 617
    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    if-ne v5, p2, :cond_0

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    if-ne v5, p1, :cond_0

    .line 618
    const/4 v0, 0x1

    .line 628
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_1
    :goto_0
    if-ne v0, v4, :cond_3

    .line 631
    :goto_1
    return v4

    .line 622
    .restart local v2       #size:Landroid/hardware/Camera$Size;
    :cond_2
    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    if-ne v5, p1, :cond_0

    .line 623
    const/4 v0, 0x1

    .line 624
    goto :goto_0

    .line 631
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V
    .locals 2
    .parameter "group"
    .parameter "pref"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/PreferenceGroup;",
            "Lcom/android/camera/ListPreference;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 393
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 394
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 405
    :goto_0
    return-void

    .line 398
    :cond_1
    invoke-virtual {p2, p3}, Lcom/android/camera/ListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 399
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_2

    .line 400
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    .line 404
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/camera/CameraSettings;->resetIfInvalid(Lcom/android/camera/ListPreference;)V

    goto :goto_0
.end method

.method public static getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cameraId"
    .parameter "defaultQuality"

    .prologue
    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 131
    .local v0, quality:I
    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getSupportedVideoQuality()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/16 v3, 0x1e0

    .line 635
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 637
    .local v0, supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v1, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    const/16 v1, 0x780

    const/16 v2, 0x440

    invoke-direct {p0, v1, v2}, Lcom/android/camera/CameraSettings;->checkSupportedVideoQuality(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_0
    iget v1, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    invoke-static {v1, v7}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 643
    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/CameraSettings;->checkSupportedVideoQuality(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 644
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    :cond_1
    iget v1, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    invoke-static {v1, v6}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 648
    const/16 v1, 0x2d0

    invoke-direct {p0, v1, v3}, Lcom/android/camera/CameraSettings;->checkSupportedVideoQuality(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 649
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    :cond_2
    iget v1, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    invoke-static {v1, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 653
    const/16 v1, 0xb0

    const/16 v2, 0x90

    invoke-direct {p0, v1, v2}, Lcom/android/camera/CameraSettings;->checkSupportedVideoQuality(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 654
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_3
    iget v1, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    invoke-static {v1, v5}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 658
    const/16 v1, 0x160

    const/16 v2, 0x120

    invoke-direct {p0, v1, v2}, Lcom/android/camera/CameraSettings;->checkSupportedVideoQuality(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 659
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    :cond_4
    iget v1, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 663
    const/16 v1, 0x360

    invoke-direct {p0, v1, v3}, Lcom/android/camera/CameraSettings;->checkSupportedVideoQuality(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 664
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_5
    iget v1, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    const/16 v2, 0x9

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 668
    const/16 v1, 0x320

    invoke-direct {p0, v1, v3}, Lcom/android/camera/CameraSettings;->checkSupportedVideoQuality(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 669
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    :cond_6
    iget v1, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 673
    const/16 v1, 0x280

    invoke-direct {p0, v1, v3}, Lcom/android/camera/CameraSettings;->checkSupportedVideoQuality(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 674
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_7
    iget v1, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    const/16 v2, 0xb

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 678
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_8
    iget v1, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    const/4 v2, 0x7

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 681
    const/16 v1, 0x140

    const/16 v2, 0xf0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/CameraSettings;->checkSupportedVideoQuality(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 682
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_9
    return-object v0
.end method

.method public static getVidoeDurationInMillis(Ljava/lang/String;)I
    .locals 1
    .parameter "quality"

    .prologue
    .line 710
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    sget v0, Lcom/android/camera/CameraSettings;->MMS_VIDEO_DURATION:I

    mul-int/lit16 v0, v0, 0x3e8

    .line 715
    :goto_0
    return v0

    .line 712
    :cond_0
    const-string v0, "youtube"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    const v0, 0xdbba0

    goto :goto_0

    .line 715
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initPreference(Lcom/android/camera/PreferenceGroup;)V
    .locals 12
    .parameter "group"

    .prologue
    .line 264
    const-string v11, "pref_video_quality_key"

    invoke-virtual {p1, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    .line 265
    .local v9, videoQuality:Lcom/android/camera/ListPreference;
    const-string v11, "pref_video_time_lapse_frame_interval_key"

    invoke-virtual {p1, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v6

    .line 266
    .local v6, timeLapseInterval:Lcom/android/camera/ListPreference;
    const-string v11, "pref_camera_picturesize_key"

    invoke-virtual {p1, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    .line 267
    .local v4, pictureSize:Lcom/android/camera/ListPreference;
    const-string v11, "pref_camera_whitebalance_key"

    invoke-virtual {p1, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v10

    .line 268
    .local v10, whiteBalance:Lcom/android/camera/ListPreference;
    const-string v11, "pref_camera_scenemode_key"

    invoke-virtual {p1, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    .line 269
    .local v5, sceneMode:Lcom/android/camera/ListPreference;
    const-string v11, "pref_camera_flashmode_key"

    invoke-virtual {p1, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 270
    .local v2, flashMode:Lcom/android/camera/ListPreference;
    const-string v11, "pref_camera_focusmode_key"

    invoke-virtual {p1, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    .line 271
    .local v3, focusMode:Lcom/android/camera/ListPreference;
    const-string v11, "pref_camera_exposure_key"

    invoke-virtual {p1, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 272
    .local v1, exposure:Lcom/android/camera/ListPreference;
    const-string v11, "pref_camera_id_key"

    invoke-virtual {p1, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 274
    .local v0, cameraIdPref:Lcom/android/camera/IconListPreference;
    const-string v11, "pref_camera_video_flashmode_key"

    invoke-virtual {p1, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v8

    .line 276
    .local v8, videoFlashMode:Lcom/android/camera/ListPreference;
    const-string v11, "pref_video_effect_key"

    invoke-virtual {p1, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v7

    .line 280
    .local v7, videoEffect:Lcom/android/camera/ListPreference;
    if-eqz v9, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/android/camera/CameraSettings;->getSupportedVideoQuality()Ljava/util/ArrayList;

    move-result-object v11

    invoke-direct {p0, p1, v9, v11}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 284
    :cond_0
    if-eqz v4, :cond_1

    .line 285
    iget-object v11, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v11

    invoke-static {v11}, Lcom/android/camera/CameraSettings;->sizeListToStringList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, p1, v4, v11}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 288
    :cond_1
    if-eqz v10, :cond_2

    .line 289
    iget-object v11, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, p1, v10, v11}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 292
    :cond_2
    if-eqz v5, :cond_3

    .line 293
    iget-object v11, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, p1, v5, v11}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 296
    :cond_3
    if-eqz v2, :cond_4

    .line 297
    iget-object v11, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, p1, v2, v11}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 300
    :cond_4
    if-eqz v3, :cond_5

    .line 301
    iget-object v11, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v11

    if-nez v11, :cond_5

    .line 302
    iget-object v11, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, p1, v3, v11}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 309
    :cond_5
    if-eqz v8, :cond_6

    .line 310
    iget-object v11, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, p1, v8, v11}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 313
    :cond_6
    if-eqz v1, :cond_7

    invoke-direct {p0, p1, v1}, Lcom/android/camera/CameraSettings;->buildExposureCompensation(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)V

    .line 314
    :cond_7
    if-eqz v0, :cond_8

    invoke-direct {p0, p1, v0}, Lcom/android/camera/CameraSettings;->buildCameraId(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/IconListPreference;)V

    .line 316
    :cond_8
    if-eqz v6, :cond_9

    invoke-direct {p0, v6}, Lcom/android/camera/CameraSettings;->resetIfInvalid(Lcom/android/camera/ListPreference;)V

    .line 317
    :cond_9
    if-eqz v7, :cond_a

    .line 318
    invoke-direct {p0, p1, v7}, Lcom/android/camera/CameraSettings;->initVideoEffect(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)V

    .line 319
    invoke-direct {p0, v7}, Lcom/android/camera/CameraSettings;->resetIfInvalid(Lcom/android/camera/ListPreference;)V

    .line 321
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/camera/CameraSettings;->qcomInitPreferences(Lcom/android/camera/PreferenceGroup;)V

    .line 322
    return-void
.end method

.method private initVideoEffect(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)V
    .locals 10
    .parameter "group"
    .parameter "videoEffect"

    .prologue
    const/4 v1, 0x1

    .line 689
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 691
    .local v8, values:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->isEffectSupported(I)Z

    move-result v3

    .line 693
    .local v3, goofyFaceSupported:Z
    const/4 v9, 0x2

    invoke-static {v9}, Lcom/android/camera/EffectsRecorder;->isEffectSupported(I)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 698
    .local v1, backdropperSupported:Z
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .local v6, supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/CharSequence;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v7, v0, v4

    .line 700
    .local v7, value:Ljava/lang/CharSequence;
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 701
    .local v2, effectSelection:Ljava/lang/String;
    if-nez v3, :cond_2

    const-string v9, "goofy_face"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 699
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 693
    .end local v0           #arr$:[Ljava/lang/CharSequence;
    .end local v1           #backdropperSupported:Z
    .end local v2           #effectSelection:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #value:Ljava/lang/CharSequence;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 702
    .restart local v0       #arr$:[Ljava/lang/CharSequence;
    .restart local v1       #backdropperSupported:Z
    .restart local v2       #effectSelection:Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #value:Ljava/lang/CharSequence;
    :cond_2
    if-nez v1, :cond_3

    const-string v9, "backdropper"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 703
    :cond_3
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 706
    .end local v2           #effectSelection:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/CharSequence;
    :cond_4
    invoke-direct {p0, p1, p2, v6}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 707
    return-void
.end method

.method public static initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V
    .locals 8
    .parameter "context"
    .parameter "parameters"

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    .line 143
    .local v5, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v5, :cond_0

    .line 155
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 146
    .local v1, candidate:Ljava/lang/String;
    invoke-static {v1, v5, p1}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 147
    invoke-static {p0}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 149
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "pref_camera_picturesize_key"

    invoke-interface {v2, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 144
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 154
    .end local v1           #candidate:Ljava/lang/String;
    :cond_2
    const-string v6, "CameraSettings"

    const-string v7, "No supported picture size found"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private qcomInitPreferences(Lcom/android/camera/PreferenceGroup;)V
    .locals 25
    .parameter "group"

    .prologue
    .line 179
    const-string v24, "pref_camera_powermode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v15

    .line 180
    .local v15, powerMode:Lcom/android/camera/ListPreference;
    const-string v24, "pref_camera_zsl_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v23

    .line 181
    .local v23, zsl:Lcom/android/camera/ListPreference;
    const-string v24, "pref_camera_coloreffect_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v6

    .line 182
    .local v6, colorEffect:Lcom/android/camera/ListPreference;
    const-string v24, "pref_camera_facedetection_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    .line 183
    .local v9, faceDetection:Lcom/android/camera/ListPreference;
    const-string v24, "pref_camera_touchafaec_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v20

    .line 184
    .local v20, touchAfAec:Lcom/android/camera/ListPreference;
    const-string v24, "pref_camera_selectablezoneaf_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v18

    .line 185
    .local v18, selectableZoneAf:Lcom/android/camera/ListPreference;
    const-string v24, "pref_camera_saturation_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v17

    .line 186
    .local v17, saturation:Lcom/android/camera/ListPreference;
    const-string v24, "pref_camera_contrast_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v7

    .line 187
    .local v7, contrast:Lcom/android/camera/ListPreference;
    const-string v24, "pref_camera_sharpness_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v19

    .line 188
    .local v19, sharpness:Lcom/android/camera/ListPreference;
    const-string v24, "pref_camera_autoexposure_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    .line 189
    .local v5, autoExposure:Lcom/android/camera/ListPreference;
    const-string v24, "pref_camera_antibanding_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    .line 190
    .local v4, antiBanding:Lcom/android/camera/ListPreference;
    const-string v24, "pref_camera_iso_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v14

    .line 191
    .local v14, mIso:Lcom/android/camera/ListPreference;
    const-string v24, "pref_camera_lensshading_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v13

    .line 192
    .local v13, lensShade:Lcom/android/camera/ListPreference;
    const-string v24, "pref_camera_histogram_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v11

    .line 193
    .local v11, histogram:Lcom/android/camera/ListPreference;
    const-string v24, "pref_camera_denoise_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v8

    .line 194
    .local v8, denoise:Lcom/android/camera/ListPreference;
    const-string v24, "pref_camera_redeyereduction_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v16

    .line 195
    .local v16, redeyeReduction:Lcom/android/camera/ListPreference;
    const-string v24, "pref_camera_ae_bracket_hdr_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v10

    .line 196
    .local v10, hdr:Lcom/android/camera/ListPreference;
    const-string v24, "pref_camera_jpegquality_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v12

    .line 197
    .local v12, jpegQuality:Lcom/android/camera/ListPreference;
    const-string v24, "pref_camera_videosnapsize_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v22

    .line 198
    .local v22, videoSnapSize:Lcom/android/camera/ListPreference;
    const-string v24, "pref_camera_video_hdr_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v21

    .line 200
    .local v21, videoHdr:Lcom/android/camera/ListPreference;
    if-eqz v20, :cond_0

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedTouchAfAec()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 205
    :cond_0
    if-eqz v18, :cond_1

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedSelectableZoneAf()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 210
    :cond_1
    if-eqz v14, :cond_2

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v14, v2}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 220
    :cond_2
    if-eqz v16, :cond_3

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedRedeyeReductionModes()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 225
    :cond_3
    if-eqz v8, :cond_4

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedDenoiseModes()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v8, v2}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 230
    :cond_4
    if-eqz v21, :cond_5

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedVideoHDRModes()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 235
    :cond_5
    if-eqz v6, :cond_6

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v6, v2}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 240
    :cond_6
    if-eqz v4, :cond_7

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v4, v2}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 244
    :cond_7
    if-eqz v5, :cond_8

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedAutoexposure()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v5, v2}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 248
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->isPowerModeSupported()Z

    move-result v24

    if-nez v24, :cond_a

    .line 250
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 256
    :goto_0
    if-eqz v11, :cond_9

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedHistogramModes()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v11, v2}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 261
    :cond_9
    return-void

    .line 253
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/camera/CameraSettings;->sizeListToStringList(Ljava/util/List;)Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    goto :goto_0
.end method

.method public static readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 7
    .parameter "pref"

    .prologue
    const/4 v3, 0x0

    .line 544
    const-string v4, "pref_video_effect_key"

    const-string v5, "none"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, effectSelection:Ljava/lang/String;
    const-string v4, "none"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 572
    :cond_0
    :goto_0
    return-object v0

    .line 548
    :cond_1
    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 549
    .local v2, separatorIndex:I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, effectParameter:Ljava/lang/String;
    const-string v4, "goofy_face"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 552
    const-string v4, "squeeze"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 553
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 554
    :cond_2
    const-string v4, "big_eyes"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 555
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 556
    :cond_3
    const-string v4, "big_mouth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 557
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 558
    :cond_4
    const-string v4, "small_mouth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 559
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 560
    :cond_5
    const-string v4, "big_nose"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 561
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 562
    :cond_6
    const-string v4, "small_eyes"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 563
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 565
    :cond_7
    const-string v4, "backdropper"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 571
    :cond_8
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid effect selection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 572
    goto/16 :goto_0
.end method

.method public static readEffectType(Landroid/content/SharedPreferences;)I
    .locals 5
    .parameter "pref"

    .prologue
    const/4 v1, 0x0

    .line 531
    const-string v2, "pref_video_effect_key"

    const-string v3, "none"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, effectSelection:Ljava/lang/String;
    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    :goto_0
    return v1

    .line 534
    :cond_0
    const-string v2, "goofy_face"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 535
    const/4 v1, 0x1

    goto :goto_0

    .line 536
    :cond_1
    const-string v2, "backdropper"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 537
    const/4 v1, 0x2

    goto :goto_0

    .line 539
    :cond_2
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid effect selection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static readExposure(Lcom/android/camera/ComboPreferences;)I
    .locals 5
    .parameter "preferences"

    .prologue
    .line 519
    const-string v2, "pref_camera_exposure_key"

    const-string v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 523
    .local v1, exposure:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 527
    :goto_0
    return v2

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid exposure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static readPreferredCameraId(Landroid/content/SharedPreferences;)I
    .locals 2
    .parameter "pref"

    .prologue
    .line 508
    const-string v0, "pref_camera_id_key"

    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .parameter "group"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    .line 372
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/camera/PreferenceGroup;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 373
    invoke-virtual {p0, v1}, Lcom/android/camera/PreferenceGroup;->get(I)Lcom/android/camera/CameraPreference;

    move-result-object v0

    .line 374
    .local v0, child:Lcom/android/camera/CameraPreference;
    instance-of v3, v0, Lcom/android/camera/PreferenceGroup;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 375
    check-cast v3, Lcom/android/camera/PreferenceGroup;

    invoke-static {v3, p1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 385
    .end local v0           #child:Lcom/android/camera/CameraPreference;
    :goto_1
    return v3

    .line 379
    .restart local v0       #child:Lcom/android/camera/CameraPreference;
    :cond_0
    instance-of v3, v0, Lcom/android/camera/ListPreference;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/android/camera/ListPreference;

    .end local v0           #child:Lcom/android/camera/CameraPreference;
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 381
    invoke-virtual {p0, v1}, Lcom/android/camera/PreferenceGroup;->removePreference(I)V

    move v3, v4

    .line 382
    goto :goto_1

    .line 372
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V
    .locals 0
    .parameter "group"
    .parameter "key"

    .prologue
    .line 159
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 160
    return-void
.end method

.method private resetIfInvalid(Lcom/android/camera/ListPreference;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 409
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 411
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 413
    :cond_0
    return-void
.end method

.method public static restorePreferences(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "context"
    .parameter "preferences"
    .parameter "parameters"

    .prologue
    const/4 v5, -0x1

    .line 578
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    .line 581
    .local v1, currentCameraId:I
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 582
    .local v0, backCameraId:I
    if-eq v0, v5, :cond_0

    .line 583
    invoke-virtual {p1, p0, v0}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 584
    invoke-virtual {p1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 585
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 586
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 588
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    .line 589
    .local v3, frontCameraId:I
    if-eq v3, v5, :cond_1

    .line 590
    invoke-virtual {p1, p0, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 591
    invoke-virtual {p1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 592
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 593
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 598
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-virtual {p1, p0, v1}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 600
    invoke-virtual {p1}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 601
    invoke-virtual {p1}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 606
    invoke-static {p0, p2}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 607
    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 608
    return-void
.end method

.method public static setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z
    .locals 7
    .parameter "candidate"
    .parameter
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v5, 0x0

    .line 164
    const/16 v6, 0x78

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 165
    .local v2, index:I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v5

    .line 166
    :cond_1
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 167
    .local v4, width:I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 168
    .local v0, height:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 169
    .local v3, size:Landroid/hardware/Camera$Size;
    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    if-ne v6, v4, :cond_2

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    if-ne v6, v0, :cond_2

    .line 170
    invoke-virtual {p2, v4, v0}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 171
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static sizeListToStringList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 418
    .local v2, size:Landroid/hardware/Camera$Size;
    const-string v3, "%dx%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 420
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_0
    return-object v1
.end method

.method private static upgradeCameraId(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 498
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 499
    .local v0, cameraId:I
    if-nez v0, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v1

    .line 502
    .local v1, n:I
    if-ltz v0, :cond_2

    if-lt v0, v1, :cond_0

    .line 503
    :cond_2
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    goto :goto_0
.end method

.method public static upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "pref"

    .prologue
    .line 443
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->upgradeOldVersion(Landroid/content/SharedPreferences;)V

    .line 444
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->upgradeCameraId(Landroid/content/SharedPreferences;)V

    .line 445
    return-void
.end method

.method public static upgradeLocalPreferences(Landroid/content/SharedPreferences;)V
    .locals 6
    .parameter "pref"

    .prologue
    const/4 v5, 0x2

    .line 426
    :try_start_0
    const-string v3, "pref_local_version_key"

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 430
    .local v2, version:I
    :goto_0
    if-ne v2, v5, :cond_0

    .line 440
    :goto_1
    return-void

    .line 427
    .end local v2           #version:I
    :catch_0
    move-exception v1

    .line 428
    .local v1, ex:Ljava/lang/Exception;
    const/4 v2, 0x0

    .restart local v2       #version:I
    goto :goto_0

    .line 432
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 433
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 436
    const-string v3, "pref_video_quality_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 438
    :cond_1
    const-string v3, "pref_local_version_key"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 439
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method private static upgradeOldVersion(Landroid/content/SharedPreferences;)V
    .locals 8
    .parameter "pref"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 450
    :try_start_0
    const-string v4, "pref_version_key"

    const/4 v5, 0x0

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 454
    .local v3, version:I
    :goto_0
    if-ne v3, v7, :cond_0

    .line 491
    :goto_1
    return-void

    .line 451
    .end local v3           #version:I
    :catch_0
    move-exception v1

    .line 452
    .local v1, ex:Ljava/lang/Exception;
    const/4 v3, 0x0

    .restart local v3       #version:I
    goto :goto_0

    .line 456
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 457
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez v3, :cond_1

    .line 460
    const/4 v3, 0x1

    .line 462
    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 464
    const-string v4, "pref_camera_jpegquality_key"

    const-string v5, "85"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, quality:Ljava/lang/String;
    const-string v4, "65"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 466
    const-string v2, "normal"

    .line 472
    :goto_2
    const-string v4, "pref_camera_jpegquality_key"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 473
    const/4 v3, 0x2

    .line 475
    .end local v2           #quality:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 476
    const-string v5, "pref_camera_recordlocation_key"

    const-string v4, "pref_camera_recordlocation_key"

    invoke-interface {p0, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "on"

    :goto_3
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 480
    const/4 v3, 0x3

    .line 482
    :cond_3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 485
    const-string v4, "pref_camera_videoquality_key"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 486
    const-string v4, "pref_camera_video_duration_key"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 489
    :cond_4
    const-string v4, "pref_version_key"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 490
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 467
    .restart local v2       #quality:Ljava/lang/String;
    :cond_5
    const-string v4, "75"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 468
    const-string v2, "fine"

    goto :goto_2

    .line 470
    :cond_6
    const-string v2, "superfine"

    goto :goto_2

    .line 476
    .end local v2           #quality:Ljava/lang/String;
    :cond_7
    const-string v4, "none"

    goto :goto_3
.end method

.method public static writePreferredCameraId(Landroid/content/SharedPreferences;I)V
    .locals 3
    .parameter "pref"
    .parameter "cameraId"

    .prologue
    .line 513
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 514
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 515
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 516
    return-void
.end method


# virtual methods
.method public getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;
    .locals 3
    .parameter "preferenceRes"

    .prologue
    .line 121
    new-instance v1, Lcom/android/camera/PreferenceInflater;

    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/camera/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 122
    .local v1, inflater:Lcom/android/camera/PreferenceInflater;
    invoke-virtual {v1, p1}, Lcom/android/camera/PreferenceInflater;->inflate(I)Lcom/android/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreferenceGroup;

    .line 124
    .local v0, group:Lcom/android/camera/PreferenceGroup;
    invoke-direct {p0, v0}, Lcom/android/camera/CameraSettings;->initPreference(Lcom/android/camera/PreferenceGroup;)V

    .line 125
    return-object v0
.end method
