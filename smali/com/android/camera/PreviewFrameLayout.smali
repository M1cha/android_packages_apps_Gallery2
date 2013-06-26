.class public Lcom/android/camera/PreviewFrameLayout;
.super Landroid/widget/RelativeLayout;
.source "PreviewFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;
    }
.end annotation


# instance fields
.field private mAspectRatio:D

.field private mBorder:Landroid/view/View;

.field private mFrontOrientation:Z

.field private mListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const-wide v0, 0x3ff5555555555555L

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PreviewFrameLayout;->mFrontOrientation:Z

    .line 46
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f0b0074

    invoke-virtual {p0, v0}, Lcom/android/camera/PreviewFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PreviewFrameLayout;->mBorder:Landroid/view/View;

    .line 55
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/high16 v12, 0x4000

    const-wide/high16 v10, 0x3fe0

    .line 81
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 82
    .local v4, previewWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 83
    .local v3, previewHeight:I
    move v2, v4

    .line 84
    .local v2, originalWidth:I
    move v1, v3

    .line 87
    .local v1, originalHeight:I
    invoke-virtual {p0}, Lcom/android/camera/PreviewFrameLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/PreviewFrameLayout;->getPaddingRight()I

    move-result v7

    add-int v0, v6, v7

    .line 88
    .local v0, hPadding:I
    invoke-virtual {p0}, Lcom/android/camera/PreviewFrameLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/PreviewFrameLayout;->getPaddingBottom()I

    move-result v7

    add-int v5, v6, v7

    .line 91
    .local v5, vPadding:I
    sub-int/2addr v4, v0

    .line 92
    sub-int/2addr v3, v5

    .line 94
    iget-boolean v6, p0, Lcom/android/camera/PreviewFrameLayout;->mFrontOrientation:Z

    if-eqz v6, :cond_1

    .line 95
    int-to-double v6, v4

    iget-wide v8, p0, Lcom/android/camera/PreviewFrameLayout;->mAspectRatio:D

    mul-double/2addr v6, v8

    add-double/2addr v6, v10

    double-to-int v3, v6

    .line 100
    :goto_0
    if-le v4, v2, :cond_2

    .line 101
    int-to-double v6, v2

    int-to-double v8, v4

    div-double/2addr v6, v8

    int-to-double v8, v3

    mul-double/2addr v6, v8

    double-to-int v3, v6

    .line 102
    move v4, v2

    .line 109
    :cond_0
    :goto_1
    add-int/2addr v4, v0

    .line 110
    add-int/2addr v3, v5

    .line 113
    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-super {p0, v6, v7}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 115
    return-void

    .line 97
    :cond_1
    int-to-double v6, v3

    iget-wide v8, p0, Lcom/android/camera/PreviewFrameLayout;->mAspectRatio:D

    mul-double/2addr v6, v8

    add-double/2addr v6, v10

    double-to-int v4, v6

    goto :goto_0

    .line 103
    :cond_2
    if-le v3, v1, :cond_0

    .line 104
    int-to-double v6, v1

    int-to-double v8, v3

    div-double/2addr v6, v8

    int-to-double v8, v4

    mul-double/2addr v6, v8

    double-to-int v4, v6

    .line 105
    move v3, v1

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/PreviewFrameLayout;->mListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PreviewFrameLayout;->mListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;->onSizeChanged(II)V

    .line 124
    :cond_0
    return-void
.end method

.method public setAspectRatio(D)V
    .locals 2
    .parameter "ratio"

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/PreviewFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 62
    const-wide/high16 v0, 0x3ff0

    div-double p1, v0, p1

    .line 65
    :cond_1
    iget-wide v0, p0, Lcom/android/camera/PreviewFrameLayout;->mAspectRatio:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_2

    .line 66
    iput-wide p1, p0, Lcom/android/camera/PreviewFrameLayout;->mAspectRatio:D

    .line 67
    invoke-virtual {p0}, Lcom/android/camera/PreviewFrameLayout;->requestLayout()V

    .line 69
    :cond_2
    return-void
.end method

.method public setCameraOrientation(Z)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/camera/PreviewFrameLayout;->mFrontOrientation:Z

    .line 50
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/camera/PreviewFrameLayout;->mListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;

    .line 119
    return-void
.end method

.method public showBorder(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/camera/PreviewFrameLayout;->mBorder:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 73
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
