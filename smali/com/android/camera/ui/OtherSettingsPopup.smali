.class public Lcom/android/camera/ui/OtherSettingsPopup;
.super Lcom/android/camera/ui/AbstractSettingPopup;
.source "OtherSettingsPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/camera/ui/InLineSettingItem$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/OtherSettingsPopup$OtherSettingsAdapter;,
        Lcom/android/camera/ui/OtherSettingsPopup$Listener;
    }
.end annotation


# instance fields
.field private mListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ListPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mListItemAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/camera/ListPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Lcom/android/camera/ui/OtherSettingsPopup$OtherSettingsAdapter;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/OtherSettingsPopup$OtherSettingsAdapter;-><init>(Lcom/android/camera/ui/OtherSettingsPopup;)V

    iput-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItemAdapter:Landroid/widget/ArrayAdapter;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/OtherSettingsPopup;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public varargs enableItems([Ljava/lang/String;)V
    .locals 9
    .parameter "keyvalues"

    .prologue
    const/4 v8, 0x0

    .line 141
    iget-object v7, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 142
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, p1

    if-ge v1, v7, :cond_4

    .line 143
    aget-object v3, p1, v1

    .line 144
    .local v3, key:Ljava/lang/String;
    add-int/lit8 v7, v1, 0x1

    aget-object v6, p1, v7

    .line 145
    .local v6, value:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 146
    iget-object v7, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ListPreference;

    .line 147
    .local v4, pref:Lcom/android/camera/ListPreference;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 148
    iget-object v7, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/InLineSettingItem;

    .line 150
    .local v5, settingItem:Lcom/android/camera/ui/InLineSettingItem;
    const-string v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "TRUE"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 151
    :cond_0
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/camera/ui/InLineSettingItem;->setEnabled(Z)V

    .line 152
    invoke-virtual {v5, v8}, Lcom/android/camera/ui/InLineSettingItem;->setVisibility(I)V

    .line 145
    .end local v5           #settingItem:Lcom/android/camera/ui/InLineSettingItem;
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 154
    .restart local v5       #settingItem:Lcom/android/camera/ui/InLineSettingItem;
    :cond_2
    invoke-virtual {v5, v8}, Lcom/android/camera/ui/InLineSettingItem;->setEnabled(Z)V

    .line 155
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Lcom/android/camera/ui/InLineSettingItem;->setVisibility(I)V

    goto :goto_2

    .line 142
    .end local v4           #pref:Lcom/android/camera/ListPreference;
    .end local v5           #settingItem:Lcom/android/camera/ui/InLineSettingItem;
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 160
    .end local v2           #j:I
    .end local v3           #key:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public initialize(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "keys"

    .prologue
    .line 102
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 103
    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 104
    .local v1, pref:Lcom/android/camera/ListPreference;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v1           #pref:Lcom/android/camera/ListPreference;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v2, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItemAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    iget-object v2, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    iget-object v2, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/ListView;

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelector(I)V

    .line 113
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/OtherSettingsPopup$Listener;->onRestorePreferencesClicked()V

    .line 169
    :cond_0
    return-void
.end method

.method public onSettingChanged()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/OtherSettingsPopup$Listener;->onSettingChanged()V

    .line 120
    :cond_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 8
    .parameter "keyvalues"

    .prologue
    .line 124
    iget-object v7, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 125
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, p1

    if-ge v1, v7, :cond_2

    .line 126
    aget-object v3, p1, v1

    .line 127
    .local v3, key:Ljava/lang/String;
    add-int/lit8 v7, v1, 0x1

    aget-object v6, p1, v7

    .line 128
    .local v6, value:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 129
    iget-object v7, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ListPreference;

    .line 130
    .local v4, pref:Lcom/android/camera/ListPreference;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 131
    iget-object v7, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/InLineSettingItem;

    .line 133
    .local v5, settingItem:Lcom/android/camera/ui/InLineSettingItem;
    invoke-virtual {v5, v6}, Lcom/android/camera/ui/InLineSettingItem;->overrideSettings(Ljava/lang/String;)V

    .line 128
    .end local v5           #settingItem:Lcom/android/camera/ui/InLineSettingItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
    .end local v4           #pref:Lcom/android/camera/ListPreference;
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 137
    .end local v2           #j:I
    .end local v3           #key:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public reloadPreference()V
    .locals 6

    .prologue
    .line 176
    iget-object v4, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v4, Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItemAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    iget-object v4, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 178
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 179
    iget-object v4, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ListPreference;

    .line 180
    .local v2, pref:Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_0

    .line 181
    iget-object v4, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/InLineSettingItem;

    .line 184
    .local v3, settingItem:Lcom/android/camera/ui/InLineSettingItem;
    invoke-virtual {v3, v2}, Lcom/android/camera/ui/InLineSettingItem;->initialize(Lcom/android/camera/ListPreference;)V

    .line 185
    invoke-virtual {v3}, Lcom/android/camera/ui/InLineSettingItem;->reloadPreference()V

    .line 178
    .end local v3           #settingItem:Lcom/android/camera/ui/InLineSettingItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v2           #pref:Lcom/android/camera/ListPreference;
    :cond_1
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/OtherSettingsPopup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;

    .line 94
    return-void
.end method
