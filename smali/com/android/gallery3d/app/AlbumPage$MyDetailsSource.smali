.class Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDetailsSource"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter

    .prologue
    .line 695
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/app/AlbumPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 695
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    return-void
.end method


# virtual methods
.method public findIndex(I)I
    .locals 2
    .parameter "indexHint"

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->mIndex:I

    .line 717
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->mIndex:I

    :goto_0
    return v0

    .line 712
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->getActiveStart()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->mIndex:I

    .line 713
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumDataLoader;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 714
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 3

    .prologue
    .line 721
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->mIndex:I

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 722
    .local v0, item:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v0, :cond_0

    .line 723
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$400(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 724
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v1

    .line 726
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 703
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->mIndex:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v0

    return v0
.end method
