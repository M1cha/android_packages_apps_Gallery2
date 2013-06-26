.class public Lcom/android/camera/ui/OtherSettingIndicatorButton;
.super Lcom/android/camera/ui/AbstractIndicatorButton;
.source "OtherSettingIndicatorButton.java"


# instance fields
.field private mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;

.field private mPrefKeys:[Ljava/lang/String;

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/camera/PreferenceGroup;[Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "resId"
    .parameter "preferenceGroup"
    .parameter "prefKeys"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/camera/ui/AbstractIndicatorButton;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/OtherSettingIndicatorButton;->setImageResource(I)V

    .line 42
    iput-object p3, p0, Lcom/android/camera/ui/OtherSettingIndicatorButton;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 43
    iput-object p4, p0, Lcom/android/camera/ui/OtherSettingIndicatorButton;->mPrefKeys:[Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public varargs enableItems([Ljava/lang/String;)V
    .locals 1
    .parameter "keyvalues"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/android/camera/ui/OtherSettingIndicatorButton;->initializePopup()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    check-cast v0, Lcom/android/camera/ui/OtherSettingsPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/OtherSettingsPopup;->enableItems([Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method protected initializePopup()V
    .locals 5

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/camera/ui/OtherSettingIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 66
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/camera/ui/OtherSettingIndicatorButton;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b005f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 68
    .local v2, root:Landroid/view/ViewGroup;
    const v3, 0x7f04001b

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/OtherSettingsPopup;

    .line 70
    .local v1, popup:Lcom/android/camera/ui/OtherSettingsPopup;
    iget-object v3, p0, Lcom/android/camera/ui/OtherSettingIndicatorButton;->mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/OtherSettingsPopup;->setSettingChangedListener(Lcom/android/camera/ui/OtherSettingsPopup$Listener;)V

    .line 71
    iget-object v3, p0, Lcom/android/camera/ui/OtherSettingIndicatorButton;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/camera/ui/OtherSettingIndicatorButton;->mPrefKeys:[Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/ui/OtherSettingsPopup;->initialize(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    iput-object v1, p0, Lcom/android/camera/ui/OtherSettingIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 74
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 1
    .parameter "keyvalues"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/camera/ui/OtherSettingIndicatorButton;->initializePopup()V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    check-cast v0, Lcom/android/camera/ui/OtherSettingsPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/OtherSettingsPopup;->overrideSettings([Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/OtherSettingsPopup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/camera/ui/OtherSettingIndicatorButton;->mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;

    .line 36
    return-void
.end method
