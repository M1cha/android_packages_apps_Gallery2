.class public Lcom/android/gallery3d/photoeditor/YesCancelDialogBuilder;
.super Landroid/app/AlertDialog$Builder;
.source "YesCancelDialogBuilder.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;I)V
    .locals 3
    .parameter "context"
    .parameter "yes"
    .parameter "messageId"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 16
    const v0, 0x7f0c0188

    new-instance v1, Lcom/android/gallery3d/photoeditor/YesCancelDialogBuilder$2;

    invoke-direct {v1, p0, p2}, Lcom/android/gallery3d/photoeditor/YesCancelDialogBuilder$2;-><init>(Lcom/android/gallery3d/photoeditor/YesCancelDialogBuilder;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/YesCancelDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c01cc

    new-instance v2, Lcom/android/gallery3d/photoeditor/YesCancelDialogBuilder$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/photoeditor/YesCancelDialogBuilder$1;-><init>(Lcom/android/gallery3d/photoeditor/YesCancelDialogBuilder;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 30
    return-void
.end method
