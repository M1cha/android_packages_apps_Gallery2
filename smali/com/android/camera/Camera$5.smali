.class Lcom/android/camera/Camera$5;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "bar"
    .parameter "progress"
    .parameter "fromtouch"

    .prologue
    const/16 v3, 0xa

    .line 1027
    add-int/lit8 v1, p2, -0xa

    iget-object v2, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->SCE_FACTOR_STEP:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$4800(Lcom/android/camera/Camera;)I

    move-result v2

    mul-int v0, v1, v2

    .line 1028
    .local v0, value:I
    if-le p2, v3, :cond_1

    .line 1029
    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->RightValue:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4900(Lcom/android/camera/Camera;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1030
    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->LeftValue:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5000(Lcom/android/camera/Camera;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1038
    :goto_0
    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mskinToneValue:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5100(Lcom/android/camera/Camera;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    .line 1039
    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mskinToneValue:I
    invoke-static {v1, v0}, Lcom/android/camera/Camera;->access$5102(Lcom/android/camera/Camera;I)I

    .line 1040
    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1041
    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "skinToneEnhancement"

    iget-object v3, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mskinToneValue:I
    invoke-static {v3}, Lcom/android/camera/Camera;->access$5100(Lcom/android/camera/Camera;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1044
    :cond_0
    return-void

    .line 1031
    :cond_1
    if-ge p2, v3, :cond_2

    .line 1032
    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->LeftValue:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5000(Lcom/android/camera/Camera;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->RightValue:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4900(Lcom/android/camera/Camera;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1035
    :cond_2
    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->LeftValue:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5000(Lcom/android/camera/Camera;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1036
    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->RightValue:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4900(Lcom/android/camera/Camera;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 1024
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "bar"

    .prologue
    .line 1047
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set onStopTrackingTouch mskinToneValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mskinToneValue:I
    invoke-static {v3}, Lcom/android/camera/Camera;->access$5100(Lcom/android/camera/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$2600(Lcom/android/camera/Camera;)Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1049
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_skinToneEnhancement_factor_key"

    iget-object v2, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mskinToneValue:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$5100(Lcom/android/camera/Camera;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1051
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1052
    return-void
.end method
