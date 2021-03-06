.class public Lcom/android/camera/ui/IndicatorControlWheel;
.super Lcom/android/camera/ui/IndicatorControl;
.source "IndicatorControlWheel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final HIGHLIGHT_RADIANS:D


# instance fields
.field private final CLOSE_ICON_DEFAULT_DEGREES:I

.field private final FIRST_LEVEL_END_DEGREES:I

.field private final FIRST_LEVEL_START_DEGREES:I

.field private final HIGHLIGHT_COLOR:I

.field private final HIGHLIGHT_FAN_COLOR:I

.field private final MAX_ZOOM_CONTROL_DEGREES:I

.field private final SECOND_LEVEL_END_DEGREES:I

.field private final SECOND_LEVEL_START_DEGREES:I

.field private final TIME_LAPSE_ARC_COLOR:I

.field private mAnimationStartTime:J

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBackgroundRect:Landroid/graphics/RectF;

.field private mCenterX:I

.field private mCenterY:I

.field private mChildRadians:[D

.field private mCloseIcon:Landroid/widget/ImageView;

.field private mCurrentLevel:I

.field private mEndVisibleRadians:[D

.field private mFanPath:Landroid/graphics/Path;

.field private mHandler:Landroid/os/Handler;

.field private mInAnimation:Z

.field private mInitialized:Z

.field private mLastMotionEvent:Landroid/view/MotionEvent;

.field private mNumberOfFrames:J

.field private mPressedIndex:I

.field private mRecordingStartTime:J

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSecondLevelIcon:Landroid/widget/ImageView;

.field private mSecondLevelStartIndex:I

.field private mSectorRadians:[D

.field private mShutterButtonRadius:D

.field private mStartVisibleRadians:[D

.field private mStrokeWidth:I

.field private mTimeLapseInterval:I

.field private mTouchSectorRadians:[D

.field private mWheelRadius:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const-wide/high16 v0, 0x403e

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/ui/IndicatorControlWheel;->HIGHLIGHT_RADIANS:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/IndicatorControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    iput v4, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mPressedIndex:I

    .line 123
    iput-wide v5, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mRecordingStartTime:J

    .line 124
    iput-wide v5, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mNumberOfFrames:J

    .line 134
    iput-boolean v2, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mInAnimation:Z

    .line 135
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mHandler:Landroid/os/Handler;

    .line 136
    new-instance v1, Lcom/android/camera/ui/IndicatorControlWheel$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/IndicatorControlWheel$1;-><init>(Lcom/android/camera/ui/IndicatorControlWheel;)V

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mRunnable:Ljava/lang/Runnable;

    .line 144
    iput v2, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    .line 145
    iput v4, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSecondLevelStartIndex:I

    .line 146
    new-array v1, v3, [D

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mStartVisibleRadians:[D

    .line 147
    new-array v1, v3, [D

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mEndVisibleRadians:[D

    .line 148
    new-array v1, v3, [D

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSectorRadians:[D

    .line 149
    new-array v1, v3, [D

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mTouchSectorRadians:[D

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 156
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->HIGHLIGHT_COLOR:I

    .line 157
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->HIGHLIGHT_FAN_COLOR:I

    .line 158
    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->TIME_LAPSE_ARC_COLOR:I

    .line 160
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/IndicatorControlWheel;->setWillNotDraw(Z)V

    .line 162
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 163
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 164
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 166
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    .line 167
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mFanPath:Landroid/graphics/Path;

    .line 169
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_0

    .line 172
    const/16 v1, 0x4a

    iput v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->FIRST_LEVEL_START_DEGREES:I

    .line 173
    const/16 v1, 0x11e

    iput v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->FIRST_LEVEL_END_DEGREES:I

    .line 174
    const/16 v1, 0x3c

    iput v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->SECOND_LEVEL_START_DEGREES:I

    .line 175
    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->SECOND_LEVEL_END_DEGREES:I

    .line 176
    const/16 v1, 0x108

    iput v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->MAX_ZOOM_CONTROL_DEGREES:I

    .line 177
    const/16 v1, 0x13b

    iput v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->CLOSE_ICON_DEFAULT_DEGREES:I

    .line 187
    :goto_0
    return-void

    .line 180
    :cond_0
    const/16 v1, -0x10

    iput v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->FIRST_LEVEL_START_DEGREES:I

    .line 181
    const/16 v1, 0xc4

    iput v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->FIRST_LEVEL_END_DEGREES:I

    .line 182
    const/16 v1, -0x1e

    iput v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->SECOND_LEVEL_START_DEGREES:I

    .line 183
    const/16 v1, 0xd2

    iput v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->SECOND_LEVEL_END_DEGREES:I

    .line 184
    const/16 v1, 0xae

    iput v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->MAX_ZOOM_CONTROL_DEGREES:I

    .line 185
    const/16 v1, 0xe1

    iput v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->CLOSE_ICON_DEFAULT_DEGREES:I

    goto :goto_0
.end method

.method private addImageButton(Landroid/content/Context;IZ)Landroid/widget/ImageView;
    .locals 1
    .parameter "context"
    .parameter "resourceId"
    .parameter "rotatable"

    .prologue
    .line 260
    if-eqz p3, :cond_0

    .line 261
    new-instance v0, Lcom/android/camera/ui/RotateImageView;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 265
    .local v0, view:Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 266
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/IndicatorControlWheel;->addView(Landroid/view/View;)V

    .line 268
    return-object v0

    .line 263
    .end local v0           #view:Landroid/widget/ImageView;
    :cond_0
    new-instance v0, Lcom/android/camera/ui/TwoStateImageView;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;)V

    .restart local v0       #view:Landroid/widget/ImageView;
    goto :goto_0
.end method

.method private changeIndicatorsLevel()V
    .locals 2

    .prologue
    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mPressedIndex:I

    .line 200
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->dismissSettingPopup()Z

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mInAnimation:Z

    .line 202
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mAnimationStartTime:J

    .line 203
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->requestLayout()V

    .line 204
    return-void
.end method

.method private getChildCountByLevel(I)I
    .locals 2
    .parameter "level"

    .prologue
    .line 191
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSecondLevelStartIndex:I

    sub-int/2addr v0, v1

    .line 194
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSecondLevelStartIndex:I

    goto :goto_0
.end method

.method private getSelectedIndicatorIndex()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 566
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 567
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 568
    .local v0, b:Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractIndicatorButton;->getPopupWindow()Lcom/android/camera/ui/AbstractSettingPopup;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 569
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/IndicatorControlWheel;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 578
    .end local v0           #b:Lcom/android/camera/ui/AbstractIndicatorButton;
    :cond_0
    :goto_1
    return v3

    .line 566
    .restart local v0       #b:Lcom/android/camera/ui/AbstractIndicatorButton;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 572
    .end local v0           #b:Lcom/android/camera/ui/AbstractIndicatorButton;
    :cond_2
    iget v4, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mPressedIndex:I

    if-eq v4, v3, :cond_0

    .line 573
    iget v4, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mPressedIndex:I

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/IndicatorControlWheel;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 574
    .local v2, v:Landroid/view/View;
    instance-of v4, v2, Lcom/android/camera/ui/AbstractIndicatorButton;

    if-nez v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 575
    iget v3, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mPressedIndex:I

    goto :goto_1
.end method

.method private getTouchIndicatorIndex(D)I
    .locals 20
    .parameter "delta"

    .prologue
    .line 273
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mInAnimation:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    const/4 v12, -0x1

    .line 356
    :cond_0
    :goto_0
    return v12

    .line 274
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/camera/ui/IndicatorControlWheel;->getChildCountByLevel(I)I

    move-result v3

    .line 275
    .local v3, count:I
    if-nez v3, :cond_2

    const/4 v12, -0x1

    goto :goto_0

    .line 276
    :cond_2
    add-int/lit8 v11, v3, -0x1

    .line 277
    .local v11, sectors:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    move/from16 v16, v0

    if-nez v16, :cond_5

    const/4 v12, 0x0

    .line 279
    .local v12, startIndex:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mTouchSectorRadians:[D

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    move/from16 v17, v0

    aget-wide v7, v16, v17

    .line 282
    .local v7, halfTouchSectorRadians:D
    const-wide/16 v13, 0x0

    .line 283
    .local v13, startRadians:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    move/from16 v16, v0

    if-nez v16, :cond_8

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    .line 287
    add-int/lit8 v12, v12, 0x1

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    move-object/from16 v16, v0

    if-nez v16, :cond_6

    .line 289
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->FIRST_LEVEL_START_DEGREES:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    add-double v13, v16, v7

    .line 297
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mSecondLevelStartIndex:I

    move/from16 v16, v0

    add-int/lit8 v4, v16, -0x1

    .line 303
    .local v4, endIndex:I
    :goto_3
    const-wide/16 v16, 0x0

    cmpg-double v16, v13, v16

    if-gez v16, :cond_3

    const-wide v16, 0x401921fb54442d18L

    add-double v13, v13, v16

    .line 305
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v4

    add-double v5, v16, v7

    .line 308
    .local v5, endRadians:D
    cmpl-double v16, v13, v5

    if-lez v16, :cond_a

    .line 310
    cmpl-double v16, p1, v13

    if-gez v16, :cond_4

    cmpg-double v16, p1, v5

    if-gtz v16, :cond_9

    :cond_4
    const/4 v15, 0x1

    .line 315
    .local v15, touchInRange:Z
    :goto_4
    if-eqz v15, :cond_12

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/IndicatorControlWheel;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 321
    const/4 v10, 0x0

    .line 327
    .local v10, offset:I
    :goto_5
    const/4 v9, 0x0

    .line 328
    .local v9, index:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v12

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2, v10}, Lcom/android/camera/ui/IndicatorControlWheel;->rebase(DI)D

    move-result-wide v16

    sub-double v16, p1, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mSectorRadians:[D

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    move/from16 v19, v0

    aget-wide v18, v18, v19

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v9, v0

    .line 332
    if-le v9, v11, :cond_d

    add-int/2addr v12, v11

    goto/16 :goto_0

    .line 277
    .end local v4           #endIndex:I
    .end local v5           #endRadians:D
    .end local v7           #halfTouchSectorRadians:D
    .end local v9           #index:I
    .end local v10           #offset:I
    .end local v12           #startIndex:I
    .end local v13           #startRadians:D
    .end local v15           #touchInRange:Z
    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mSecondLevelStartIndex:I

    goto/16 :goto_1

    .line 292
    .restart local v7       #halfTouchSectorRadians:D
    .restart local v12       #startIndex:I
    .restart local v13       #startRadians:D
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v12

    sub-double v13, v16, v7

    goto/16 :goto_2

    .line 295
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v12

    sub-double v13, v16, v7

    goto/16 :goto_2

    .line 299
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/IndicatorControlWheel;->getChildCount()I

    move-result v16

    add-int/lit8 v4, v16, -0x1

    .line 300
    .restart local v4       #endIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v12

    sub-double v13, v16, v7

    goto/16 :goto_3

    .line 310
    .restart local v5       #endRadians:D
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 312
    :cond_a
    cmpl-double v16, p1, v13

    if-ltz v16, :cond_b

    cmpg-double v16, p1, v5

    if-gtz v16, :cond_b

    const/4 v15, 0x1

    .restart local v15       #touchInRange:Z
    :goto_6
    goto/16 :goto_4

    .end local v15           #touchInRange:Z
    :cond_b
    const/4 v15, 0x0

    goto :goto_6

    .line 323
    .restart local v15       #touchInRange:Z
    :cond_c
    const/16 v10, 0x5a

    .line 324
    .restart local v10       #offset:I
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v10}, Lcom/android/camera/ui/IndicatorControlWheel;->rebase(DI)D

    move-result-wide p1

    goto/16 :goto_5

    .line 334
    .restart local v9       #index:I
    :cond_d
    if-ltz v9, :cond_0

    .line 336
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    move/from16 v16, v0

    if-nez v16, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    move-object/from16 v16, v0

    if-nez v16, :cond_f

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v12

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2, v10}, Lcom/android/camera/ui/IndicatorControlWheel;->rebase(DI)D

    move-result-wide v16

    sub-double v16, v16, v7

    cmpl-double v16, p1, v16

    if-ltz v16, :cond_11

    .line 339
    add-int/2addr v12, v9

    goto/16 :goto_0

    .line 342
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    move-object/from16 v16, v0

    add-int v17, v12, v9

    aget-wide v16, v16, v17

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2, v10}, Lcom/android/camera/ui/IndicatorControlWheel;->rebase(DI)D

    move-result-wide v16

    add-double v16, v16, v7

    cmpg-double v16, p1, v16

    if-gtz v16, :cond_10

    .line 344
    add-int/2addr v12, v9

    goto/16 :goto_0

    .line 346
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    move-object/from16 v16, v0

    add-int v17, v12, v9

    add-int/lit8 v17, v17, 0x1

    aget-wide v16, v16, v17

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2, v10}, Lcom/android/camera/ui/IndicatorControlWheel;->rebase(DI)D

    move-result-wide v16

    sub-double v16, v16, v7

    cmpl-double v16, p1, v16

    if-ltz v16, :cond_11

    .line 348
    add-int v16, v12, v9

    add-int/lit8 v12, v16, 0x1

    goto/16 :goto_0

    .line 354
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    move/from16 v16, v0

    if-nez v16, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    move-object/from16 v16, v0

    if-eqz v16, :cond_12

    const/4 v12, 0x0

    goto/16 :goto_0

    .line 356
    .end local v9           #index:I
    .end local v10           #offset:I
    :cond_12
    const/4 v12, -0x1

    goto/16 :goto_0
.end method

.method private injectMotionEvent(ILandroid/view/MotionEvent;I)V
    .locals 1
    .parameter "viewIndex"
    .parameter "event"
    .parameter "action"

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/IndicatorControlWheel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 375
    .local v0, v:Landroid/view/View;
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 376
    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 377
    return-void
.end method

.method private presetFirstLevelChildRadians()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 515
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mStartVisibleRadians:[D

    iget v3, p0, Lcom/android/camera/ui/IndicatorControlWheel;->FIRST_LEVEL_START_DEGREES:I

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    aput-wide v3, v2, v5

    .line 516
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mTouchSectorRadians:[D

    sget-wide v3, Lcom/android/camera/ui/IndicatorControlWheel;->HIGHLIGHT_RADIANS:D

    aput-wide v3, v2, v5

    .line 517
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mEndVisibleRadians:[D

    iget v3, p0, Lcom/android/camera/ui/IndicatorControlWheel;->FIRST_LEVEL_END_DEGREES:I

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    aput-wide v3, v2, v5

    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, startIndex:I
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    if-eqz v2, :cond_0

    .line 522
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    add-int/lit8 v1, v0, 0x1

    .end local v0           #startIndex:I
    .local v1, startIndex:I
    iget v3, p0, Lcom/android/camera/ui/IndicatorControlWheel;->MAX_ZOOM_CONTROL_DEGREES:I

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    aput-wide v3, v2, v0

    move v0, v1

    .line 524
    .end local v1           #startIndex:I
    .restart local v0       #startIndex:I
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    if-eqz v2, :cond_1

    .line 525
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    add-int/lit8 v1, v0, 0x1

    .end local v0           #startIndex:I
    .restart local v1       #startIndex:I
    iget v3, p0, Lcom/android/camera/ui/IndicatorControlWheel;->FIRST_LEVEL_START_DEGREES:I

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    aput-wide v3, v2, v0

    move v0, v1

    .line 527
    .end local v1           #startIndex:I
    .restart local v0       #startIndex:I
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    add-int/lit8 v1, v0, 0x1

    .end local v0           #startIndex:I
    .restart local v1       #startIndex:I
    iget v3, p0, Lcom/android/camera/ui/IndicatorControlWheel;->FIRST_LEVEL_END_DEGREES:I

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 528
    return-void
.end method

.method private presetSecondLevelChildRadians()V
    .locals 14

    .prologue
    const/4 v8, 0x1

    .line 531
    invoke-direct {p0, v8}, Lcom/android/camera/ui/IndicatorControlWheel;->getChildCountByLevel(I)I

    move-result v0

    .line 532
    .local v0, count:I
    if-gt v0, v8, :cond_0

    move v6, v8

    .line 533
    .local v6, sectors:I
    :goto_0
    iget v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->SECOND_LEVEL_END_DEGREES:I

    iget v10, p0, Lcom/android/camera/ui/IndicatorControlWheel;->SECOND_LEVEL_START_DEGREES:I

    sub-int/2addr v9, v10

    div-int/2addr v9, v6

    int-to-double v4, v9

    .line 535
    .local v4, sectorDegrees:D
    iget-object v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSectorRadians:[D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    aput-wide v10, v9, v8

    .line 537
    iget v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->CLOSE_ICON_DEFAULT_DEGREES:I

    int-to-double v1, v9

    .line 538
    .local v1, degrees:D
    iget-object v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mStartVisibleRadians:[D

    iget v10, p0, Lcom/android/camera/ui/IndicatorControlWheel;->SECOND_LEVEL_START_DEGREES:I

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    aput-wide v10, v9, v8

    .line 540
    iget v7, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSecondLevelStartIndex:I

    .line 541
    .local v7, startIndex:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 542
    iget-object v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    add-int v10, v7, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    aput-wide v11, v9, v10

    .line 543
    add-double/2addr v1, v4

    .line 541
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 532
    .end local v1           #degrees:D
    .end local v3           #i:I
    .end local v4           #sectorDegrees:D
    .end local v6           #sectors:I
    .end local v7           #startIndex:I
    :cond_0
    add-int/lit8 v6, v0, -0x1

    goto :goto_0

    .line 547
    .restart local v1       #degrees:D
    .restart local v3       #i:I
    .restart local v4       #sectorDegrees:D
    .restart local v6       #sectors:I
    .restart local v7       #startIndex:I
    :cond_1
    iget-object v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mTouchSectorRadians:[D

    sget-wide v10, Lcom/android/camera/ui/IndicatorControlWheel;->HIGHLIGHT_RADIANS:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    aput-wide v10, v9, v8

    .line 550
    iget-object v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mEndVisibleRadians:[D

    iget v10, p0, Lcom/android/camera/ui/IndicatorControlWheel;->SECOND_LEVEL_END_DEGREES:I

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    aput-wide v10, v9, v8

    .line 551
    return-void
.end method

.method private rebase(DI)D
    .locals 4
    .parameter "oldAngle"
    .parameter "offset"

    .prologue
    .line 370
    int-to-double v0, p3

    add-double/2addr v0, p1

    const-wide v2, 0x401921fb54442d18L

    rem-double/2addr v0, v2

    return-wide v0
.end method

.method private rotateWheel()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 433
    iget v7, p0, Lcom/android/camera/ui/IndicatorControlWheel;->CLOSE_ICON_DEFAULT_DEGREES:I

    iget v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->SECOND_LEVEL_START_DEGREES:I

    sub-int v6, v7, v9

    .line 434
    .local v6, totalDegrees:I
    iget v7, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    if-nez v7, :cond_2

    iget v5, p0, Lcom/android/camera/ui/IndicatorControlWheel;->CLOSE_ICON_DEFAULT_DEGREES:I

    .line 436
    .local v5, startAngle:I
    :goto_0
    iget v7, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    if-nez v7, :cond_0

    neg-int v6, v6

    .line 438
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mAnimationStartTime:J

    sub-long/2addr v9, v11

    long-to-int v0, v9

    .line 439
    .local v0, elapsedTime:I
    const/16 v7, 0x12c

    if-lt v0, v7, :cond_1

    .line 440
    const/16 v0, 0x12c

    .line 441
    iget v7, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    if-nez v7, :cond_3

    const/4 v7, 0x1

    :goto_1
    iput v7, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    .line 442
    iput-boolean v8, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mInAnimation:Z

    .line 445
    :cond_1
    mul-int v7, v6, v0

    div-int/lit16 v7, v7, 0x12c

    add-int v1, v5, v7

    .line 446
    .local v1, expectedAngle:I
    int-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    iget-object v7, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    iget v11, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSecondLevelStartIndex:I

    aget-wide v11, v7, v11

    sub-double v3, v9, v11

    .line 448
    .local v3, increment:D
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_4

    iget-object v7, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    aget-wide v9, v7, v2

    add-double/2addr v9, v3

    aput-wide v9, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 434
    .end local v0           #elapsedTime:I
    .end local v1           #expectedAngle:I
    .end local v2           #i:I
    .end local v3           #increment:D
    .end local v5           #startAngle:I
    :cond_2
    iget v5, p0, Lcom/android/camera/ui/IndicatorControlWheel;->SECOND_LEVEL_START_DEGREES:I

    goto :goto_0

    .restart local v0       #elapsedTime:I
    .restart local v5       #startAngle:I
    :cond_3
    move v7, v8

    .line 441
    goto :goto_1

    .line 450
    .restart local v1       #expectedAngle:I
    .restart local v2       #i:I
    .restart local v3       #increment:D
    :cond_4
    iget-object v7, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    if-eqz v7, :cond_5

    .line 451
    iget-object v7, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    iget-object v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    aget-wide v8, v9, v8

    iget v10, p0, Lcom/android/camera/ui/IndicatorControlWheel;->MAX_ZOOM_CONTROL_DEGREES:I

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Lcom/android/camera/ui/ZoomControl;->rotate(D)V

    .line 454
    :cond_5
    return-void
.end method


# virtual methods
.method public dismissSecondLevelIndicator()V
    .locals 2

    .prologue
    .line 682
    iget v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 683
    invoke-direct {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->changeIndicatorsLevel()V

    .line 685
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/IndicatorControlWheel;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, 0x0

    .line 429
    :goto_0
    return v10

    .line 382
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 383
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 385
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget v11, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterX:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    float-to-double v5, v10

    .line 386
    .local v5, dx:D
    iget v10, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterY:I

    int-to-float v10, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-double v7, v10

    .line 387
    .local v7, dy:D
    mul-double v10, v5, v5

    mul-double v12, v7, v7

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 390
    .local v1, centerToTouchPoint:D
    iget-wide v10, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mWheelRadius:D

    iget v12, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mStrokeWidth:I

    int-to-double v12, v12

    add-double/2addr v10, v12

    cmpg-double v10, v1, v10

    if-gtz v10, :cond_a

    iget-wide v10, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    cmpl-double v10, v1, v10

    if-lez v10, :cond_a

    .line 392
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    .line 393
    .local v3, delta:D
    const-wide/16 v10, 0x0

    cmpg-double v10, v3, v10

    if-gez v10, :cond_1

    const-wide v10, 0x401921fb54442d18L

    add-double/2addr v3, v10

    .line 394
    :cond_1
    invoke-direct {p0, v3, v4}, Lcom/android/camera/ui/IndicatorControlWheel;->getTouchIndicatorIndex(D)I

    move-result v9

    .line 396
    .local v9, index:I
    iget-object v10, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    if-eqz v10, :cond_2

    if-nez v9, :cond_2

    .line 397
    iget-object v10, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    invoke-virtual {v10, p1}, Lcom/android/camera/ui/ZoomControl;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 400
    :cond_2
    iget v10, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mPressedIndex:I

    if-ne v9, v10, :cond_3

    if-nez v0, :cond_5

    .line 401
    :cond_3
    iget v10, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mPressedIndex:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    .line 402
    iget v10, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mPressedIndex:I

    const/4 v11, 0x3

    invoke-direct {p0, v10, p1, v11}, Lcom/android/camera/ui/IndicatorControlWheel;->injectMotionEvent(ILandroid/view/MotionEvent;I)V

    .line 407
    :cond_4
    :goto_1
    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    const/4 v10, 0x2

    if-ne v0, v10, :cond_5

    .line 408
    iget v10, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    if-eqz v10, :cond_5

    .line 409
    const/4 v10, 0x0

    invoke-direct {p0, v9, p1, v10}, Lcom/android/camera/ui/IndicatorControlWheel;->injectMotionEvent(ILandroid/view/MotionEvent;I)V

    .line 413
    :cond_5
    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    const/4 v10, 0x2

    if-eq v0, v10, :cond_6

    .line 414
    invoke-virtual {p0, v9}, Lcom/android/camera/ui/IndicatorControlWheel;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 418
    :cond_6
    iget v10, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    if-nez v10, :cond_8

    if-eqz v9, :cond_8

    const/4 v10, 0x2

    if-ne v0, v10, :cond_8

    .line 420
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 405
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->getSelectedIndicatorIndex()I

    move-result v10

    if-eq v10, v9, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->dismissSettingPopup()Z

    goto :goto_1

    .line 423
    :cond_8
    const/4 v10, 0x1

    if-ne v0, v10, :cond_9

    const/4 v9, -0x1

    .end local v9           #index:I
    :cond_9
    iput v9, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mPressedIndex:I

    .line 424
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->invalidate()V

    .line 425
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 428
    .end local v3           #delta:D
    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->onTouchOutBound()V

    .line 429
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public enableZoom(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomControl;->setEnabled(Z)V

    .line 670
    :cond_0
    return-void
.end method

.method public initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Z[Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 10
    .parameter "context"
    .parameter "group"
    .parameter "isZoomSupported"
    .parameter "keys"
    .parameter "otherSettingKeys"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 213
    const/16 v4, 0x4a

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v4

    int-to-double v4, v4

    iput-wide v4, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    .line 215
    const/16 v4, 0x57

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mStrokeWidth:I

    .line 216
    iget-wide v4, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    iget v6, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mStrokeWidth:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3fe0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mWheelRadius:D

    .line 218
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/IndicatorControlWheel;->setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V

    .line 221
    invoke-virtual {p0, p3}, Lcom/android/camera/ui/IndicatorControlWheel;->initializeZoomControl(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->initializeCameraPicker()V

    .line 227
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSecondLevelIcon:Landroid/widget/ImageView;

    if-nez v4, :cond_0

    .line 228
    const v4, 0x7f02006d

    invoke-direct {p0, p1, v4, v3}, Lcom/android/camera/ui/IndicatorControlWheel;->addImageButton(Landroid/content/Context;IZ)Landroid/widget/ImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSecondLevelIcon:Landroid/widget/ImageView;

    .line 230
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSecondLevelIcon:Landroid/widget/ImageView;

    const v5, 0x7f0b002b

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 231
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->getChildCount()I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSecondLevelStartIndex:I

    .line 235
    :cond_0
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCloseIcon:Landroid/widget/ImageView;

    if-nez v4, :cond_1

    .line 236
    const v4, 0x7f02002a

    invoke-direct {p0, p1, v4, v2}, Lcom/android/camera/ui/IndicatorControlWheel;->addImageButton(Landroid/content/Context;IZ)Landroid/widget/ImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCloseIcon:Landroid/widget/ImageView;

    .line 241
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCloseIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/IndicatorControlWheel;->indexOfChild(Landroid/view/View;)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 242
    .local v1, index:I
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->getChildCount()I

    move-result v4

    sub-int v0, v4, v1

    .line 243
    .local v0, count:I
    if-lez v0, :cond_2

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/ui/IndicatorControlWheel;->removeControls(II)V

    .line 245
    :cond_2
    invoke-virtual {p0, p4, p5}, Lcom/android/camera/ui/IndicatorControlWheel;->addControls([Ljava/lang/String;Ljava/util/HashMap;)V

    .line 248
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->getChildCount()I

    move-result v4

    new-array v4, v4, [D

    iput-object v4, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    .line 249
    invoke-direct {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->presetFirstLevelChildRadians()V

    .line 250
    invoke-direct {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->presetSecondLevelChildRadians()V

    .line 253
    iget v4, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentMode:I

    if-eqz v4, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/IndicatorControlWheel;->setupFilter(Z)V

    .line 254
    iput-boolean v3, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mInitialized:Z

    .line 255
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->requestLayout()V

    .line 256
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->changeIndicatorsLevel()V

    .line 209
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .parameter "canvas"

    .prologue
    .line 583
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/IndicatorControlWheel;->getSelectedIndicatorIndex()I

    move-result v13

    .line 587
    .local v13, selectedIndex:I
    const/4 v2, 0x1

    if-lt v13, v2, :cond_0

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    aget-wide v2, v2, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-int v8, v2

    .line 589
    .local v8, degree:I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    double-to-float v9, v2

    .line 590
    .local v9, innerR:F
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mStrokeWidth:I

    int-to-double v6, v4

    add-double/2addr v2, v6

    const-wide/high16 v6, 0x4008

    add-double/2addr v2, v6

    double-to-float v12, v2

    .line 594
    .local v12, outerR:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mFanPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterX:I

    int-to-float v3, v3

    sub-float/2addr v3, v9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterY:I

    int-to-float v4, v4

    sub-float/2addr v4, v9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterX:I

    int-to-float v6, v6

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterY:I

    int-to-float v7, v7

    add-float/2addr v7, v9

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mFanPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    neg-int v4, v8

    add-int/lit8 v4, v4, 0xf

    int-to-float v4, v4

    const/high16 v6, -0x3e10

    invoke-virtual {v2, v3, v4, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterX:I

    int-to-float v3, v3

    sub-float/2addr v3, v12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterY:I

    int-to-float v4, v4

    sub-float/2addr v4, v12

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterX:I

    int-to-float v6, v6

    add-float/2addr v6, v12

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterY:I

    int-to-float v7, v7

    add-float/2addr v7, v12

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mFanPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    neg-int v4, v8

    add-int/lit8 v4, v4, -0xf

    int-to-float v4, v4

    const/high16 v6, 0x41f0

    invoke-virtual {v2, v3, v4, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mFanPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x4080

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/IndicatorControlWheel;->HIGHLIGHT_FAN_COLOR:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mFanPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/IndicatorControlWheel;->HIGHLIGHT_COLOR:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    neg-int v2, v8

    add-int/lit8 v2, v2, -0xf

    int-to-float v4, v2

    const/high16 v5, 0x41f0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 619
    .end local v8           #degree:I
    .end local v9           #innerR:F
    .end local v12           #outerR:F
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mTimeLapseInterval:I

    if-eqz v2, :cond_1

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterX:I

    int-to-double v3, v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    sub-double/2addr v3, v6

    double-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterY:I

    int-to-double v6, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    move-wide/from16 v16, v0

    sub-double v6, v6, v16

    double-to-float v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterX:I

    int-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    move-wide/from16 v16, v0

    add-double v6, v6, v16

    double-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterY:I

    int-to-double v0, v7

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v7, v0

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    const/high16 v3, 0x4040

    const/high16 v4, 0x4040

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40c0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/IndicatorControlWheel;->TIME_LAPSE_ARC_COLOR:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 631
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mRecordingStartTime:J

    sub-long v14, v2, v6

    .line 632
    .local v14, timeDelta:J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mTimeLapseInterval:I

    int-to-long v2, v2

    div-long v10, v14, v2

    .line 634
    .local v10, numberOfFrames:J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mNumberOfFrames:J

    cmp-long v2, v10, v2

    if-lez v2, :cond_2

    .line 637
    const/high16 v5, 0x43b4

    .line 638
    .local v5, sweepAngle:F
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mNumberOfFrames:J

    .line 643
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/IndicatorControlWheel;->invalidate()V

    .line 647
    .end local v5           #sweepAngle:F
    .end local v10           #numberOfFrames:J
    .end local v14           #timeDelta:J
    :cond_1
    invoke-super/range {p0 .. p1}, Lcom/android/camera/ui/IndicatorControl;->onDraw(Landroid/graphics/Canvas;)V

    .line 648
    return-void

    .line 640
    .restart local v10       #numberOfFrames:J
    .restart local v14       #timeDelta:J
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mTimeLapseInterval:I

    int-to-long v2, v2

    rem-long v2, v14, v2

    long-to-float v2, v2

    const/high16 v3, 0x43b4

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mTimeLapseInterval:I

    int-to-float v3, v3

    div-float v5, v2, v3

    .restart local v5       #sweepAngle:F
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 18
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 459
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mInitialized:Z

    if-nez v13, :cond_1

    .line 511
    :cond_0
    return-void

    .line 460
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mInAnimation:Z

    if-eqz v13, :cond_2

    .line 461
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/IndicatorControlWheel;->rotateWheel()V

    .line 462
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 465
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/IndicatorControlWheel;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_5

    .line 467
    sub-int v13, p4, p2

    const/16 v14, 0x5d

    invoke-static {v14}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v14

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterX:I

    .line 469
    sub-int v13, p5, p3

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterY:I

    .line 479
    :goto_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/IndicatorControlWheel;->getChildCount()I

    move-result v13

    if-ge v4, v13, :cond_0

    .line 480
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/IndicatorControlWheel;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 482
    .local v9, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mChildRadians:[D

    aget-wide v5, v13, v4

    .line 483
    .local v5, radian:D
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mInAnimation:Z

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mStartVisibleRadians:[D

    const/4 v14, 0x1

    aget-wide v7, v13, v14

    .line 486
    .local v7, startVisibleRadians:D
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mInAnimation:Z

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mEndVisibleRadians:[D

    const/4 v14, 0x1

    aget-wide v1, v13, v14

    .line 491
    .local v1, endVisibleRadians:D
    :goto_3
    invoke-virtual {v9}, Landroid/view/View;->isEnabled()Z

    move-result v13

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentMode:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_4

    :cond_3
    sget-wide v13, Lcom/android/camera/ui/IndicatorControlWheel;->HIGHLIGHT_RADIANS:D

    const-wide/high16 v15, 0x4000

    div-double/2addr v13, v15

    sub-double v13, v7, v13

    cmpg-double v13, v5, v13

    if-ltz v13, :cond_4

    sget-wide v13, Lcom/android/camera/ui/IndicatorControlWheel;->HIGHLIGHT_RADIANS:D

    const-wide/high16 v15, 0x4000

    div-double/2addr v13, v15

    add-double/2addr v13, v1

    cmpl-double v13, v5, v13

    if-lez v13, :cond_8

    .line 495
    :cond_4
    const/16 v13, 0x8

    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 479
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 471
    .end local v1           #endVisibleRadians:D
    .end local v4           #i:I
    .end local v5           #radian:D
    .end local v7           #startVisibleRadians:D
    .end local v9           #view:Landroid/view/View;
    :cond_5
    sub-int v13, p4, p2

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterX:I

    .line 472
    sub-int v13, p5, p3

    const/16 v14, 0x5d

    invoke-static {v14}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v14

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterY:I

    goto :goto_0

    .line 483
    .restart local v4       #i:I
    .restart local v5       #radian:D
    .restart local v9       #view:Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mStartVisibleRadians:[D

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    aget-wide v7, v13, v14

    goto :goto_2

    .line 486
    .restart local v7       #startVisibleRadians:D
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mEndVisibleRadians:[D

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentLevel:I

    aget-wide v1, v13, v14

    goto :goto_3

    .line 498
    .restart local v1       #endVisibleRadians:D
    :cond_8
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 499
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterX:I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mWheelRadius:D

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-int v14, v14

    add-int v11, v13, v14

    .line 500
    .local v11, x:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mCenterY:I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mWheelRadius:D

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-int v14, v14

    sub-int v12, v13, v14

    .line 501
    .local v12, y:I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 502
    .local v10, width:I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 503
    .local v3, height:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/IndicatorControlWheel;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    if-ne v9, v13, :cond_9

    .line 505
    const/4 v13, 0x0

    const/4 v14, 0x0

    sub-int v15, p4, p2

    sub-int v16, p5, p3

    move/from16 v0, v16

    invoke-virtual {v9, v13, v14, v15, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 507
    :cond_9
    div-int/lit8 v13, v10, 0x2

    sub-int v13, v11, v13

    div-int/lit8 v14, v3, 0x2

    sub-int v14, v12, v14

    div-int/lit8 v15, v10, 0x2

    add-int/2addr v15, v11

    div-int/lit8 v16, v3, 0x2

    add-int v16, v16, v12

    move/from16 v0, v16

    invoke-virtual {v9, v13, v14, v15, v0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_4
.end method

.method public onTouchOutBound()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 673
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->dismissSettingPopup()Z

    .line 674
    iget v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mPressedIndex:I

    if-eq v0, v3, :cond_0

    .line 675
    iget v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mPressedIndex:I

    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mLastMotionEvent:Landroid/view/MotionEvent;

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/IndicatorControlWheel;->injectMotionEvent(ILandroid/view/MotionEvent;I)V

    .line 676
    iput v3, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mPressedIndex:I

    .line 677
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->invalidate()V

    .line 679
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 652
    invoke-super {p0, p1}, Lcom/android/camera/ui/IndicatorControl;->setEnabled(Z)V

    .line 653
    iget-boolean v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mInitialized:Z

    if-nez v0, :cond_0

    .line 666
    :goto_0
    return-void

    .line 654
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCurrentMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 655
    iget-object v3, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSecondLevelIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 656
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCloseIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 661
    :goto_3
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mSecondLevelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 662
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mCloseIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 665
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->requestLayout()V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 655
    goto :goto_1

    :cond_2
    move v1, v2

    .line 656
    goto :goto_2

    .line 659
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/IndicatorControlWheel;->enableZoom(Z)V

    goto :goto_3
.end method

.method public startTimeLapseAnimation(IJ)V
    .locals 2
    .parameter "timeLapseInterval"
    .parameter "startTime"

    .prologue
    .line 554
    iput p1, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mTimeLapseInterval:I

    .line 555
    iput-wide p2, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mRecordingStartTime:J

    .line 556
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mNumberOfFrames:J

    .line 557
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->invalidate()V

    .line 558
    return-void
.end method

.method public stopTimeLapseAnimation()V
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/IndicatorControlWheel;->mTimeLapseInterval:I

    .line 562
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheel;->invalidate()V

    .line 563
    return-void
.end method
