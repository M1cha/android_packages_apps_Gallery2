.class public abstract Lcom/android/camera/ui/IndicatorControlContainer;
.super Lcom/android/camera/ui/IndicatorControl;
.source "IndicatorControlContainer.java"

# interfaces
.implements Lcom/android/camera/ui/OnIndicatorEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/IndicatorControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method


# virtual methods
.method public abstract dismissSecondLevelIndicator()V
.end method

.method public abstract enableFilter(Z)V
.end method

.method public abstract enableZoom(Z)V
.end method

.method public abstract initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Z[Ljava/lang/String;Ljava/util/HashMap;)V
.end method

.method public startTimeLapseAnimation(IJ)V
    .locals 0
    .parameter "timeLapseInterval"
    .parameter "startTime"

    .prologue
    .line 41
    return-void
.end method

.method public stopTimeLapseAnimation()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method
