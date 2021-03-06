.class public Lcom/android/camera/ModePicker;
.super Landroid/widget/RelativeLayout;
.source "ModePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ModePicker$OnModeChangeListener;
    }
.end annotation


# instance fields
.field private final DISABLED_COLOR:I

.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCurrentMode:I

.field private mCurrentModeBar:Landroid/view/View;

.field private mCurrentModeFrame:Landroid/view/View;

.field private mCurrentModeIcon:[Lcom/android/camera/ui/RotateImageView;

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mListener:Lcom/android/camera/ModePicker$OnModeChangeListener;

.field private mModeChanged:Z

.field private mModeSelectionFrame:Landroid/view/View;

.field private mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

.field private mSelectionEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ModePicker;->mCurrentMode:I

    .line 121
    new-instance v0, Lcom/android/camera/ModePicker$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ModePicker$1;-><init>(Lcom/android/camera/ModePicker;)V

    iput-object v0, p0, Lcom/android/camera/ModePicker;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ModePicker;->DISABLED_COLOR:I

    .line 71
    const v0, 0x7f050002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ModePicker;->mFadeIn:Landroid/view/animation/Animation;

    .line 73
    const v0, 0x7f050003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ModePicker;->mFadeOut:Landroid/view/animation/Animation;

    .line 75
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mFadeOut:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/camera/ModePicker;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 76
    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ModePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/camera/ModePicker;->mModeChanged:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ModePicker;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ModePicker;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mModeSelectionFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ModePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/camera/ModePicker;->changeToSelectedMode()V

    return-void
.end method

.method private changeToSelectedMode()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mListener:Lcom/android/camera/ModePicker$OnModeChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ModePicker;->mListener:Lcom/android/camera/ModePicker$OnModeChangeListener;

    iget v1, p0, Lcom/android/camera/ModePicker;->mCurrentMode:I

    invoke-interface {v0, v1}, Lcom/android/camera/ModePicker$OnModeChangeListener;->onModeChanged(I)V

    .line 165
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ModePicker;->mModeChanged:Z

    .line 166
    return-void
.end method

.method private enableModeSelection(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 147
    iput-boolean p1, p0, Lcom/android/camera/ModePicker;->mSelectionEnabled:Z

    .line 149
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mModeSelectionFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 150
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mModeSelectionFrame:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ModePicker;->mFadeIn:Landroid/view/animation/Animation;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 151
    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mModeSelectionFrame:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 157
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ModePicker;->updateModeState()V

    .line 161
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mFadeOut:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method private highlightView(Landroid/widget/ImageView;Z)V
    .locals 2
    .parameter "view"
    .parameter "enabled"

    .prologue
    .line 240
    if-eqz p2, :cond_0

    .line 241
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    iget v0, p0, Lcom/android/camera/ModePicker;->DISABLED_COLOR:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private registerOnClickListener()V
    .locals 2

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_1
    return-void
.end method

.method private updateModeState()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x1

    .line 249
    iget-object v4, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 250
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v7, :cond_1

    .line 251
    iget-object v4, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    aget-object v6, v4, v0

    iget v4, p0, Lcom/android/camera/ModePicker;->mCurrentMode:I

    if-ne v0, v4, :cond_0

    move v4, v5

    :goto_1
    invoke-direct {p0, v6, v4}, Lcom/android/camera/ModePicker;->highlightView(Landroid/widget/ImageView;Z)V

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 257
    .end local v0           #i:I
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 258
    const/4 v0, 0x0

    .restart local v0       #i:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v0, v7, :cond_4

    .line 260
    if-ne v0, v5, :cond_2

    .line 262
    iget v3, p0, Lcom/android/camera/ModePicker;->mCurrentMode:I

    .line 268
    .local v3, target:I
    :goto_3
    iget-object v4, p0, Lcom/android/camera/ModePicker;->mCurrentModeIcon:[Lcom/android/camera/ui/RotateImageView;

    aget-object v4, v4, v0

    iget-object v6, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/android/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 265
    .end local v3           #target:I
    :cond_2
    iget v4, p0, Lcom/android/camera/ModePicker;->mCurrentMode:I

    if-ne v1, v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 266
    :cond_3
    add-int/lit8 v2, v1, 0x1

    .end local v1           #j:I
    .local v2, j:I
    move v3, v1

    .restart local v3       #target:I
    move v1, v2

    .end local v2           #j:I
    .restart local v1       #j:I
    goto :goto_3

    .line 272
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v3           #target:I
    :cond_4
    return-void
.end method


# virtual methods
.method public dismissModeSelection()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 309
    iget-boolean v1, p0, Lcom/android/camera/ModePicker;->mSelectionEnabled:Z

    if-eqz v1, :cond_0

    .line 310
    invoke-direct {p0, v0}, Lcom/android/camera/ModePicker;->enableModeSelection(Z)V

    .line 311
    const/4 v0, 0x1

    .line 313
    :cond_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 170
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/camera/ModePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 172
    invoke-direct {p0, v2}, Lcom/android/camera/ModePicker;->enableModeSelection(Z)V

    .line 188
    :goto_0
    return-void

    .line 175
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_2

    iget v1, p0, Lcom/android/camera/ModePicker;->mCurrentMode:I

    if-eq v1, v0, :cond_2

    .line 177
    invoke-virtual {p0, v0}, Lcom/android/camera/ModePicker;->setCurrentMode(I)V

    .line 178
    iput-boolean v2, p0, Lcom/android/camera/ModePicker;->mModeChanged:Z

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeBar:Landroid/view/View;

    if-nez v1, :cond_3

    .line 183
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/ModePicker;->enableModeSelection(Z)V

    goto :goto_0

    .line 175
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 185
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/ModePicker;->changeToSelectedMode()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 81
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 83
    const v0, 0x7f0b0039

    invoke-virtual {p0, v0}, Lcom/android/camera/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ModePicker;->mModeSelectionFrame:Landroid/view/View;

    .line 84
    new-array v0, v5, [Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    .line 85
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lcom/android/camera/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    aput-object v0, v1, v4

    .line 87
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lcom/android/camera/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    aput-object v0, v1, v2

    .line 89
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    const v0, 0x7f0b003c

    invoke-virtual {p0, v0}, Lcom/android/camera/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    aput-object v0, v1, v3

    .line 93
    const v0, 0x7f0b0035

    invoke-virtual {p0, v0}, Lcom/android/camera/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 95
    new-array v0, v5, [Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ModePicker;->mCurrentModeIcon:[Lcom/android/camera/ui/RotateImageView;

    .line 96
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeIcon:[Lcom/android/camera/ui/RotateImageView;

    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Lcom/android/camera/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    aput-object v0, v1, v3

    .line 97
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeIcon:[Lcom/android/camera/ui/RotateImageView;

    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Lcom/android/camera/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    aput-object v0, v1, v2

    .line 98
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeIcon:[Lcom/android/camera/ui/RotateImageView;

    const v0, 0x7f0b0038

    invoke-virtual {p0, v0}, Lcom/android/camera/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    aput-object v0, v1, v4

    .line 104
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/ModePicker;->registerOnClickListener()V

    .line 105
    return-void

    .line 101
    :cond_0
    const v0, 0x7f0b003d

    invoke-virtual {p0, v0}, Lcom/android/camera/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ModePicker;->mCurrentModeBar:Landroid/view/View;

    .line 102
    invoke-direct {p0, v2}, Lcom/android/camera/ModePicker;->enableModeSelection(Z)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 277
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 279
    iget-object v6, p0, Lcom/android/camera/ModePicker;->mCurrentModeBar:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/android/camera/ModePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 283
    iget-object v6, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/android/camera/ui/RotateImageView;->getWidth()I

    move-result v5

    .line 284
    .local v5, viewWidth:I
    iget-object v6, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 286
    .local v1, iconWidth:I
    sub-int v6, v5, v1

    div-int/lit8 v3, v6, 0x2

    .line 287
    .local v3, padding:I
    iget-object v6, p0, Lcom/android/camera/ModePicker;->mModeSelectionFrame:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/android/camera/ModePicker;->mCurrentMode:I

    mul-int/2addr v7, v5

    add-int v2, v6, v7

    .line 288
    .local v2, l:I
    iget-object v6, p0, Lcom/android/camera/ModePicker;->mCurrentModeBar:Landroid/view/View;

    add-int v7, v2, v3

    sub-int v8, p5, p3

    iget-object v9, p0, Lcom/android/camera/ModePicker;->mCurrentModeBar:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    add-int v9, v2, v3

    add-int/2addr v9, v1

    sub-int v10, p5, p3

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 305
    .end local v1           #iconWidth:I
    .end local v2           #l:I
    .end local v3           #padding:I
    .end local v5           #viewWidth:I
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v6, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/android/camera/ui/RotateImageView;->getHeight()I

    move-result v4

    .line 295
    .local v4, viewHeight:I
    iget-object v6, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 297
    .local v0, iconHeight:I
    sub-int v6, v4, v0

    div-int/lit8 v3, v6, 0x2

    .line 298
    .restart local v3       #padding:I
    iget-object v6, p0, Lcom/android/camera/ModePicker;->mModeSelectionFrame:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p0, Lcom/android/camera/ModePicker;->mCurrentMode:I

    mul-int/2addr v7, v4

    add-int v2, v6, v7

    .line 299
    .restart local v2       #l:I
    iget-object v6, p0, Lcom/android/camera/ModePicker;->mCurrentModeBar:Landroid/view/View;

    const/4 v7, 0x0

    add-int v8, v2, v3

    iget-object v9, p0, Lcom/android/camera/ModePicker;->mCurrentModeBar:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int v10, v2, v3

    add-int/2addr v10, v0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public onOtherPopupShowed()V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/camera/ModePicker;->dismissModeSelection()Z

    .line 119
    return-void
.end method

.method public setCurrentMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    .line 195
    iput p1, p0, Lcom/android/camera/ModePicker;->mCurrentMode:I

    .line 198
    const/4 v1, 0x1

    .line 199
    .local v1, enbaled:Z
    iget v5, p0, Lcom/android/camera/ModePicker;->mCurrentMode:I

    if-nez v5, :cond_0

    const/4 v1, 0x0

    .line 200
    :cond_0
    iget-object v5, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mCurrentModeIcon:[Lcom/android/camera/ui/RotateImageView;

    .local v0, arr$:[Lcom/android/camera/ui/RotateImageView;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .local v4, v:Lcom/android/camera/ui/TwoStateImageView;
    invoke-virtual {v4, v1}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    .end local v0           #arr$:[Lcom/android/camera/ui/RotateImageView;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #v:Lcom/android/camera/ui/TwoStateImageView;
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    .restart local v0       #arr$:[Lcom/android/camera/ui/RotateImageView;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .restart local v4       #v:Lcom/android/camera/ui/TwoStateImageView;
    invoke-virtual {v4, v1}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 205
    .end local v4           #v:Lcom/android/camera/ui/TwoStateImageView;
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ModePicker;->updateModeState()V

    .line 206
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 228
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mModeSelectionFrame:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 232
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 233
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 234
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeIcon:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 232
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/ModePicker;->updateModeState()V

    .line 237
    :cond_3
    return-void
.end method

.method public setOnModeChangeListener(Lcom/android/camera/ModePicker$OnModeChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/camera/ModePicker;->mListener:Lcom/android/camera/ModePicker$OnModeChangeListener;

    .line 192
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 215
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 217
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mCurrentModeIcon:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 215
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_1
    return-void
.end method
