.class public abstract Lcom/android/camera/ui/IndicatorControl;
.super Landroid/widget/RelativeLayout;
.source "IndicatorControl.java"

# interfaces
.implements Lcom/android/camera/ui/IndicatorButton$Listener;
.implements Lcom/android/camera/ui/OtherSettingsPopup$Listener;
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field protected mCameraPicker:Lcom/android/camera/ui/CameraPicker;

.field protected mCurrentMode:I

.field mIndicators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/AbstractIndicatorButton;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

.field protected mOnIndicatorEventListener:Lcom/android/camera/ui/OnIndicatorEventListener;

.field private mOtherSettingsPopups:[Lcom/android/camera/ui/OtherSettingsPopup;

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field protected mZoomControl:Lcom/android/camera/ui/ZoomControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/IndicatorControl;->mCurrentMode:I

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorControl;->mIndicators:Ljava/util/ArrayList;

    .line 67
    return-void
.end method


# virtual methods
.method protected addControls([Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 5
    .parameter "keys"
    .parameter "otherSettingKeys"

    .prologue
    .line 95
    if-eqz p1, :cond_1

    .line 96
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControl;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    .line 99
    .local v1, pref:Lcom/android/camera/IconListPreference;
    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/ui/IndicatorControl;->addIndicator(Landroid/content/Context;Lcom/android/camera/IconListPreference;)Lcom/android/camera/ui/IndicatorButton;

    .line 96
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    .end local v0           #i:I
    .end local v1           #pref:Lcom/android/camera/IconListPreference;
    :cond_1
    if-eqz p2, :cond_2

    .line 107
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/camera/ui/OtherSettingsPopup;

    iput-object v2, p0, Lcom/android/camera/ui/IndicatorControl;->mOtherSettingsPopups:[Lcom/android/camera/ui/OtherSettingsPopup;

    .line 108
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControl;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020055

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/camera/ui/IndicatorControl;->addOtherSettingIndicator(Landroid/content/Context;I[Ljava/lang/String;)Lcom/android/camera/ui/OtherSettingIndicatorButton;

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method public addIndicator(Landroid/content/Context;Lcom/android/camera/IconListPreference;)Lcom/android/camera/ui/IndicatorButton;
    .locals 2
    .parameter "context"
    .parameter "pref"

    .prologue
    .line 154
    new-instance v0, Lcom/android/camera/ui/IndicatorButton;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/ui/IndicatorButton;-><init>(Landroid/content/Context;Lcom/android/camera/IconListPreference;)V

    .line 155
    .local v0, b:Lcom/android/camera/ui/IndicatorButton;
    invoke-virtual {v0, p0}, Lcom/android/camera/ui/IndicatorButton;->setSettingChangedListener(Lcom/android/camera/ui/IndicatorButton$Listener;)V

    .line 156
    invoke-virtual {p2}, Lcom/android/camera/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/IndicatorControl;->addView(Landroid/view/View;)V

    .line 158
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControl;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    return-object v0
.end method

.method public addOtherSettingIndicator(Landroid/content/Context;I[Ljava/lang/String;)Lcom/android/camera/ui/OtherSettingIndicatorButton;
    .locals 3
    .parameter "context"
    .parameter "resId"
    .parameter "keys"

    .prologue
    .line 164
    new-instance v0, Lcom/android/camera/ui/OtherSettingIndicatorButton;

    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControl;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/android/camera/ui/OtherSettingIndicatorButton;-><init>(Landroid/content/Context;ILcom/android/camera/PreferenceGroup;[Ljava/lang/String;)V

    .line 166
    .local v0, b:Lcom/android/camera/ui/OtherSettingIndicatorButton;
    invoke-virtual {v0, p0}, Lcom/android/camera/ui/OtherSettingIndicatorButton;->setSettingChangedListener(Lcom/android/camera/ui/OtherSettingsPopup$Listener;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0126

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/OtherSettingIndicatorButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 169
    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/OtherSettingIndicatorButton;->setId(I)V

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/IndicatorControl;->addView(Landroid/view/View;)V

    .line 171
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControl;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    return-object v0
.end method

.method public dismissSettingPopup()Z
    .locals 3

    .prologue
    .line 190
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControl;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 191
    .local v1, v:Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v1}, Lcom/android/camera/ui/AbstractIndicatorButton;->dismissPopup()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControl;->invalidate()V

    .line 193
    const/4 v2, 0x1

    .line 196
    .end local v1           #v:Lcom/android/camera/ui/AbstractIndicatorButton;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public varargs enableItems([Ljava/lang/String;)V
    .locals 3
    .parameter "keyvalues"

    .prologue
    .line 221
    array-length v2, p1

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 222
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControl;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 226
    .local v0, b:Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/AbstractIndicatorButton;->enableItems([Ljava/lang/String;)V

    goto :goto_0

    .line 228
    .end local v0           #b:Lcom/android/camera/ui/AbstractIndicatorButton;
    :cond_1
    return-void
.end method

.method public getActiveSettingPopup()Landroid/view/View;
    .locals 4

    .prologue
    .line 200
    iget-object v3, p0, Lcom/android/camera/ui/IndicatorControl;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 201
    .local v2, v:Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v2}, Lcom/android/camera/ui/AbstractIndicatorButton;->getPopupWindow()Lcom/android/camera/ui/AbstractSettingPopup;

    move-result-object v1

    .line 202
    .local v1, result:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 204
    .end local v1           #result:Landroid/view/View;
    .end local v2           #v:Lcom/android/camera/ui/AbstractIndicatorButton;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected initializeCameraPicker()V
    .locals 3

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControl;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    if-eqz v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControl;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 130
    .local v0, pref:Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    .line 131
    new-instance v1, Lcom/android/camera/ui/CameraPicker;

    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/ui/CameraPicker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/IndicatorControl;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    .line 132
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControl;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraPicker;->initialize(Lcom/android/camera/ListPreference;)V

    .line 133
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControl;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/IndicatorControl;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected initializeZoomControl(Z)V
    .locals 2
    .parameter "zoomSupported"

    .prologue
    .line 137
    if-eqz p1, :cond_1

    .line 138
    const v0, 0x7f0b0012

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/IndicatorControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ZoomControl;

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorControl;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControl;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setVisibility(I)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControl;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControl;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setVisibility(I)V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorControl;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    goto :goto_0
.end method

.method public onRestorePreferencesClicked()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControl;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControl;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onRestorePreferencesClicked()V

    .line 180
    :cond_0
    return-void
.end method

.method public onSettingChanged()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControl;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControl;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged()V

    .line 187
    :cond_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 3
    .parameter "keyvalues"

    .prologue
    .line 209
    array-length v2, p1

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 210
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControl;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 214
    .local v0, b:Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/AbstractIndicatorButton;->overrideSettings([Ljava/lang/String;)V

    goto :goto_0

    .line 216
    .end local v0           #b:Lcom/android/camera/ui/AbstractIndicatorButton;
    :cond_1
    return-void
.end method

.method public reloadPreferences()V
    .locals 3

    .prologue
    .line 231
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControl;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v2}, Lcom/android/camera/PreferenceGroup;->reloadValue()V

    .line 232
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControl;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 233
    .local v0, b:Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractIndicatorButton;->reloadPreference()V

    goto :goto_0

    .line 235
    .end local v0           #b:Lcom/android/camera/ui/AbstractIndicatorButton;
    :cond_0
    return-void
.end method

.method protected removeControls(II)V
    .locals 3
    .parameter "index"
    .parameter "count"

    .prologue
    .line 116
    move v1, p1

    .local v1, i:I
    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_0

    .line 117
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/IndicatorControl;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 118
    .local v0, b:Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractIndicatorButton;->removePopupWindow()V

    .line 119
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControl;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v0           #b:Lcom/android/camera/ui/AbstractIndicatorButton;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/IndicatorControl;->removeViews(II)V

    .line 122
    return-void
.end method

.method public setEnabled(Z)V
    .locals 7
    .parameter "enabled"

    .prologue
    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 239
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 240
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControl;->getChildCount()I

    move-result v0

    .line 241
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 242
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/IndicatorControl;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 244
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/android/camera/ui/AbstractIndicatorButton;

    if-eqz v3, :cond_0

    .line 245
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 247
    iget v3, p0, Lcom/android/camera/ui/IndicatorControl;->mCurrentMode:I

    if-ne v3, v6, :cond_0

    .line 248
    if-eqz p1, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 241
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    .line 248
    goto :goto_1

    .line 252
    .end local v2           #v:Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/IndicatorControl;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    if-eqz v3, :cond_3

    .line 253
    iget-object v3, p0, Lcom/android/camera/ui/IndicatorControl;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    invoke-virtual {v3, p1}, Lcom/android/camera/ui/CameraPicker;->setEnabled(Z)V

    .line 254
    iget v3, p0, Lcom/android/camera/ui/IndicatorControl;->mCurrentMode:I

    if-ne v3, v6, :cond_3

    .line 255
    iget-object v3, p0, Lcom/android/camera/ui/IndicatorControl;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    if-eqz p1, :cond_4

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/camera/ui/CameraPicker;->setVisibility(I)V

    .line 258
    :cond_3
    return-void

    :cond_4
    move v4, v5

    .line 255
    goto :goto_2
.end method

.method public setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/camera/ui/IndicatorControl;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControl;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControl;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraPicker;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 63
    :cond_0
    return-void
.end method

.method public setOnIndicatorEventListener(Lcom/android/camera/ui/OnIndicatorEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/camera/ui/IndicatorControl;->mOnIndicatorEventListener:Lcom/android/camera/ui/OnIndicatorEventListener;

    .line 82
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 4
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControl;->getChildCount()I

    move-result v0

    .line 72
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 73
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/IndicatorControl;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 74
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/android/camera/ui/Rotatable;

    if-eqz v3, :cond_0

    .line 75
    check-cast v2, Lcom/android/camera/ui/Rotatable;

    .end local v2           #view:Landroid/view/View;
    invoke-interface {v2, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 72
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_1
    return-void
.end method

.method public setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V
    .locals 3
    .parameter "group"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/camera/ui/IndicatorControl;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 87
    invoke-virtual {p1}, Lcom/android/camera/PreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControl;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0127

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/ui/IndicatorControl;->mCurrentMode:I

    .line 92
    :cond_0
    return-void
.end method

.method public setupFilter(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 261
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControl;->getChildCount()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 262
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/IndicatorControl;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 263
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v3, :cond_0

    .line 264
    check-cast v2, Lcom/android/camera/ui/TwoStateImageView;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {v2, p1}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    .line 261
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    :cond_1
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method
