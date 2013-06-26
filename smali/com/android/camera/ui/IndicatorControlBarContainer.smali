.class public Lcom/android/camera/ui/IndicatorControlBarContainer;
.super Lcom/android/camera/ui/IndicatorControlContainer;
.source "IndicatorControlBarContainer.java"


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

.field private mSecondLevelFadeIn:Landroid/view/animation/Animation;

.field private mSecondLevelFadeOut:Landroid/view/animation/Animation;

.field private mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/IndicatorControlContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    new-instance v0, Lcom/android/camera/ui/IndicatorControlBarContainer$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/IndicatorControlBarContainer$1;-><init>(Lcom/android/camera/ui/IndicatorControlBarContainer;)V

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 49
    const/high16 v0, 0x7f05

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mFadeIn:Landroid/view/animation/Animation;

    .line 51
    const v0, 0x7f050001

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mFadeOut:Landroid/view/animation/Animation;

    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mFadeOut:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 54
    const v0, 0x7f050009

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelFadeIn:Landroid/view/animation/Animation;

    .line 56
    const v0, 0x7f05000a

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelFadeOut:Landroid/view/animation/Animation;

    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelFadeOut:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/IndicatorControlBarContainer;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelFadeOut:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/IndicatorControlBarContainer;)Lcom/android/camera/ui/SecondLevelIndicatorControlBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/IndicatorControlBarContainer;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mFadeOut:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/IndicatorControlBarContainer;)Lcom/android/camera/ui/IndicatorControlBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    return-object v0
.end method

.method private leaveSecondLevelIndicator()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorControlBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorControlBar;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 121
    return-void
.end method


# virtual methods
.method public dismissSecondLevelIndicator()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/android/camera/ui/IndicatorControlBarContainer;->leaveSecondLevelIndicator()V

    .line 196
    :cond_0
    return-void
.end method

.method public dismissSettingPopup()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlBar;->dismissSettingPopup()Z

    move-result v0

    .line 167
    :goto_0
    return v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->dismissSettingPopup()Z

    move-result v0

    goto :goto_0

    .line 167
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/IndicatorControlBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 95
    :goto_0
    return v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 95
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public enableFilter(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/IndicatorControlBar;->setupFilter(Z)V

    .line 201
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->setupFilter(Z)V

    .line 202
    return-void
.end method

.method public varargs enableItems([Ljava/lang/String;)V
    .locals 1
    .parameter "keyvalues"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->enableItems([Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public enableZoom(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/IndicatorControlBar;->enableZoom(Z)V

    .line 189
    return-void
.end method

.method public getActiveSettingPopup()Landroid/view/View;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlBar;->getActiveSettingPopup()Landroid/view/View;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getActiveSettingPopup()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Z[Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .parameter "context"
    .parameter "group"
    .parameter "isZoomSupported"
    .parameter "secondLevelKeys"
    .parameter "secondLevelOtherSettingKeys"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/ui/IndicatorControlBar;->initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Z)V

    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0, p1, p2, p4, p5}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;Ljava/util/HashMap;)V

    .line 80
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 63
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/IndicatorControlBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/IndicatorControlBar;

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/IndicatorControlBar;->setOnIndicatorEventListener(Lcom/android/camera/ui/OnIndicatorEventListener;)V

    .line 66
    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/IndicatorControlBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->setOnIndicatorEventListener(Lcom/android/camera/ui/OnIndicatorEventListener;)V

    .line 69
    return-void
.end method

.method public onIndicatorEvent(I)V
    .locals 2
    .parameter "event"

    .prologue
    .line 125
    packed-switch p1, :pswitch_data_0

    .line 136
    :goto_0
    return-void

    .line 127
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorControlBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 128
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->setVisibility(I)V

    goto :goto_0

    .line 133
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/ui/IndicatorControlBarContainer;->leaveSecondLevelIndicator()V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 1
    .parameter "keyvalues"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->overrideSettings([Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public reloadPreferences()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlBar;->reloadPreferences()V

    .line 141
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->reloadPreferences()V

    .line 142
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/IndicatorControlBar;->setEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->setEnabled(Z)V

    .line 184
    return-void
.end method

.method public setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/IndicatorControlBar;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 148
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/IndicatorControlBar;->setOrientation(IZ)V

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->setOrientation(IZ)V

    .line 86
    return-void
.end method
