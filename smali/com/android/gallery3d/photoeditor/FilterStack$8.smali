.class Lcom/android/gallery3d/photoeditor/FilterStack$8;
.super Ljava/lang/Object;
.source "FilterStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/FilterStack;->topFilterChanged(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

.field final synthetic val$callback:Lcom/android/gallery3d/photoeditor/OnDoneCallback;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/FilterStack$8;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/FilterStack$8;->val$callback:Lcom/android/gallery3d/photoeditor/OnDoneCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack$8;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    #calls: Lcom/android/gallery3d/photoeditor/FilterStack;->invalidateTopFilter()V
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$1200(Lcom/android/gallery3d/photoeditor/FilterStack;)V

    .line 248
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack$8;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack$8;->val$callback:Lcom/android/gallery3d/photoeditor/OnDoneCallback;

    #calls: Lcom/android/gallery3d/photoeditor/FilterStack;->callbackDone(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$800(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    .line 249
    return-void
.end method
