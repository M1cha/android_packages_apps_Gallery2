.class public Lcom/android/camera/ui/SecondLevelIndicatorControlBar;
.super Lcom/android/camera/ui/IndicatorControl;
.source "SecondLevelIndicatorControlBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorChangeListener;


# static fields
.field private static ICON_SPACING:I


# instance fields
.field private mCloseIcon:Landroid/view/View;

.field private mDivider:Landroid/view/View;

.field mNonIndicatorButtonCount:I

.field mOrientation:I

.field private mPopupedIndicator:Landroid/view/View;

.field mSelectedIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->ICON_SPACING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/IndicatorControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mOrientation:I

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mSelectedIndex:I

    .line 52
    return-void
.end method

.method private dispatchRelativeTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 116
    return-void
.end method

.method private getTouchViewIndex(IZ)I
    .locals 6
    .parameter "touchPosition"
    .parameter "isLandscape"

    .prologue
    const/4 v4, -0x1

    .line 88
    if-eqz p2, :cond_1

    .line 89
    iget-object v5, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge p1, v5, :cond_2

    iget-object v4, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 108
    :cond_0
    :goto_0
    return v4

    .line 91
    :cond_1
    iget-object v5, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le p1, v5, :cond_2

    iget-object v4, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->indexOfChild(Landroid/view/View;)I

    move-result v4

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getChildCount()I

    move-result v2

    .line 96
    .local v2, count:I
    iget v5, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mNonIndicatorButtonCount:I

    if-eq v2, v5, :cond_0

    .line 98
    iget v5, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mNonIndicatorButtonCount:I

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 99
    .local v3, firstIndicatorButton:Landroid/view/View;
    if-eqz p2, :cond_3

    .line 100
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    .line 101
    .local v0, baseline:I
    if-lt p1, v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getHeight()I

    move-result v4

    sub-int/2addr v4, v0

    iget v5, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mNonIndicatorButtonCount:I

    sub-int v5, v2, v5

    div-int v1, v4, v5

    .line 103
    .local v1, buttonRange:I
    iget v4, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mNonIndicatorButtonCount:I

    sub-int v5, p1, v0

    div-int/2addr v5, v1

    add-int/2addr v4, v5

    goto :goto_0

    .line 105
    .end local v0           #baseline:I
    .end local v1           #buttonRange:I
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v0

    .line 106
    .restart local v0       #baseline:I
    if-gt p1, v0, :cond_0

    .line 107
    iget v4, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mNonIndicatorButtonCount:I

    sub-int v4, v2, v4

    div-int v1, v0, v4

    .line 108
    .restart local v1       #buttonRange:I
    iget v4, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mNonIndicatorButtonCount:I

    sub-int v5, v0, p1

    div-int/2addr v5, v1

    add-int/2addr v4, v5

    goto :goto_0
.end method


# virtual methods
.method public addIndicator(Landroid/content/Context;Lcom/android/camera/IconListPreference;)Lcom/android/camera/ui/IndicatorButton;
    .locals 2
    .parameter "context"
    .parameter "pref"

    .prologue
    .line 169
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/IndicatorControl;->addIndicator(Landroid/content/Context;Lcom/android/camera/IconListPreference;)Lcom/android/camera/ui/IndicatorButton;

    move-result-object v0

    .line 170
    .local v0, b:Lcom/android/camera/ui/IndicatorButton;
    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorButton;->setBackgroundResource(I)V

    .line 171
    invoke-virtual {v0, p0}, Lcom/android/camera/ui/IndicatorButton;->setIndicatorChangeListener(Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorChangeListener;)V

    .line 172
    return-object v0
.end method

.method public addOtherSettingIndicator(Landroid/content/Context;I[Ljava/lang/String;)Lcom/android/camera/ui/OtherSettingIndicatorButton;
    .locals 2
    .parameter "context"
    .parameter "resId"
    .parameter "keys"

    .prologue
    .line 178
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/IndicatorControl;->addOtherSettingIndicator(Landroid/content/Context;I[Ljava/lang/String;)Lcom/android/camera/ui/OtherSettingIndicatorButton;

    move-result-object v0

    .line 180
    .local v0, b:Lcom/android/camera/ui/OtherSettingIndicatorButton;
    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/OtherSettingIndicatorButton;->setBackgroundResource(I)V

    .line 181
    invoke-virtual {v0, p0}, Lcom/android/camera/ui/OtherSettingIndicatorButton;->setIndicatorChangeListener(Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorChangeListener;)V

    .line 182
    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/OtherSettingIndicatorButton;->setId(I)V

    .line 183
    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v9

    .line 122
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 123
    .local v0, action:I
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 125
    const/4 v3, 0x0

    .line 126
    .local v3, index:I
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    if-ne v11, v13, :cond_4

    move v4, v10

    .line 129
    .local v4, isLandscape:Z
    :goto_1
    if-eqz v4, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    :goto_2
    float-to-int v7, v11

    .line 132
    .local v7, touchPosition:I
    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getHeight()I

    move-result v2

    .line 133
    .local v2, controlBarLength:I
    :goto_3
    if-eqz v2, :cond_0

    .line 134
    if-lt v7, v2, :cond_2

    .line 135
    add-int/lit8 v7, v2, -0x1

    .line 137
    :cond_2
    invoke-direct {p0, v7, v4}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getTouchViewIndex(IZ)I

    move-result v3

    .line 140
    iget v11, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mSelectedIndex:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    iget v11, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mSelectedIndex:I

    if-eq v3, v11, :cond_3

    .line 141
    iget v11, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mSelectedIndex:I

    invoke-virtual {p0, v11}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 143
    .local v6, p:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 144
    .local v5, oldAction:I
    const/4 v11, 0x3

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->setAction(I)V

    .line 145
    invoke-direct {p0, v6, p1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->dispatchRelativeTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 146
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 148
    instance-of v11, v6, Lcom/android/camera/ui/AbstractIndicatorButton;

    if-eqz v11, :cond_3

    move-object v1, v6

    .line 149
    check-cast v1, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 150
    .local v1, b:Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v1}, Lcom/android/camera/ui/AbstractIndicatorButton;->dismissPopup()Z

    .line 155
    .end local v1           #b:Lcom/android/camera/ui/AbstractIndicatorButton;
    .end local v5           #oldAction:I
    .end local v6           #p:Landroid/view/View;
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 156
    .local v8, v:Landroid/view/View;
    if-nez v8, :cond_7

    move v9, v10

    goto :goto_0

    .end local v2           #controlBarLength:I
    .end local v4           #isLandscape:Z
    .end local v7           #touchPosition:I
    .end local v8           #v:Landroid/view/View;
    :cond_4
    move v4, v9

    .line 126
    goto :goto_1

    .line 129
    .restart local v4       #isLandscape:Z
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    goto :goto_2

    .line 132
    .restart local v7       #touchPosition:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getWidth()I

    move-result v2

    goto :goto_3

    .line 159
    .restart local v2       #controlBarLength:I
    .restart local v8       #v:Landroid/view/View;
    :cond_7
    iget v11, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mSelectedIndex:I

    if-eq v11, v3, :cond_8

    if-ne v0, v13, :cond_8

    .line 160
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 162
    :cond_8
    invoke-direct {p0, v8, p1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->dispatchRelativeTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 163
    iput v3, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mSelectedIndex:I

    move v9, v10

    .line 164
    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .parameter "context"
    .parameter "group"
    .parameter "keys"
    .parameter "otherSettingKeys"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mNonIndicatorButtonCount:I

    sub-int v0, v2, v3

    .line 70
    .local v0, count:I
    if-lez v0, :cond_0

    iget v2, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mNonIndicatorButtonCount:I

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->removeControls(II)V

    .line 72
    :cond_0
    invoke-virtual {p0, p3, p4}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->addControls([Ljava/lang/String;Ljava/util/HashMap;)V

    .line 73
    iget v2, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mOrientation:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mOrientation:I

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->setOrientation(IZ)V

    .line 76
    :cond_1
    iget v2, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCurrentMode:I

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->setupFilter(Z)V

    .line 77
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->dismissSettingPopup()Z

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mOnIndicatorEventListener:Lcom/android/camera/ui/OnIndicatorEventListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/ui/OnIndicatorEventListener;->onIndicatorEvent(I)V

    .line 84
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 56
    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mDivider:Landroid/view/View;

    .line 57
    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mNonIndicatorButtonCount:I

    .line 60
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getChildCount()I

    move-result v0

    .line 205
    .local v0, count:I
    if-nez v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    sub-int v9, p4, p2

    .line 207
    .local v9, width:I
    sub-int v2, p5, p3

    .line 209
    .local v2, height:I
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 211
    iget-object v10, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 212
    .local v4, iconSize:I
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getPaddingTop()I

    move-result v7

    .line 214
    .local v7, padding:I
    move v6, v7

    .line 215
    .local v6, offset:I
    iget-object v10, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    const/4 v11, 0x0

    add-int v12, v6, v4

    invoke-virtual {v10, v11, v6, v9, v12}, Landroid/view/View;->layout(IIII)V

    .line 217
    add-int v10, v4, v7

    add-int/2addr v6, v10

    .line 218
    iget-object v10, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mDivider:Landroid/view/View;

    sub-int v11, v9, v7

    iget-object v12, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mDivider:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v10, v7, v6, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 221
    sub-int v10, v2, v4

    sub-int v8, v10, v7

    .line 222
    .local v8, startY:I
    sub-int v10, v2, v4

    mul-int/lit8 v11, v7, 0x2

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mNonIndicatorButtonCount:I

    sub-int v11, v0, v11

    div-int v1, v10, v11

    .line 223
    .local v1, decrement:I
    add-int/lit8 v3, v0, -0x1

    .local v3, i:I
    :goto_1
    iget v10, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mNonIndicatorButtonCount:I

    if-lt v3, v10, :cond_0

    .line 224
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    add-int v12, v8, v4

    invoke-virtual {v10, v11, v8, v9, v12}, Landroid/view/View;->layout(IIII)V

    .line 225
    sub-int/2addr v8, v1

    .line 223
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 228
    .end local v1           #decrement:I
    .end local v3           #i:I
    .end local v4           #iconSize:I
    .end local v6           #offset:I
    .end local v7           #padding:I
    .end local v8           #startY:I
    :cond_2
    iget-object v10, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 229
    .restart local v4       #iconSize:I
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getPaddingLeft()I

    move-result v7

    .line 231
    .restart local v7       #padding:I
    move v6, v7

    .line 232
    .restart local v6       #offset:I
    sub-int v10, v9, v4

    mul-int/lit8 v11, v7, 0x2

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mNonIndicatorButtonCount:I

    sub-int v11, v0, v11

    div-int v5, v10, v11

    .line 233
    .local v5, increment:I
    add-int/lit8 v3, v0, -0x1

    .restart local v3       #i:I
    :goto_2
    iget v10, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mNonIndicatorButtonCount:I

    if-lt v3, v10, :cond_3

    .line 234
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    add-int v12, v6, v4

    invoke-virtual {v10, v6, v11, v12, v2}, Landroid/view/View;->layout(IIII)V

    .line 235
    add-int/2addr v6, v5

    .line 233
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 238
    :cond_3
    sub-int v10, v9, v4

    mul-int/lit8 v11, v7, 0x2

    sub-int v6, v10, v11

    .line 239
    iget-object v10, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mDivider:Landroid/view/View;

    iget-object v11, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mDivider:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v6

    sub-int v12, v2, v7

    invoke-virtual {v10, v6, v7, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 241
    sub-int v10, v9, v4

    sub-int v6, v10, v7

    .line 243
    iget-object v10, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    const/4 v11, 0x0

    add-int v12, v6, v4

    invoke-virtual {v10, v6, v11, v12, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0
.end method

.method public onShowIndicator(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "showed"

    .prologue
    .line 189
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mPopupedIndicator:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 193
    .end local p1
    :goto_0
    return-void

    .line 190
    .restart local p1
    :cond_0
    if-eqz p2, :cond_1

    .end local p1
    :goto_1
    iput-object p1, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mPopupedIndicator:Landroid/view/View;

    .line 192
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->requestLayout()V

    goto :goto_0

    .line 190
    .restart local p1
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 249
    invoke-super {p0, p1}, Lcom/android/camera/ui/IndicatorControl;->setEnabled(Z)V

    .line 250
    iget v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 254
    return-void

    .line 251
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 0
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 197
    iput p1, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mOrientation:I

    .line 198
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/IndicatorControl;->setOrientation(IZ)V

    .line 199
    return-void
.end method
