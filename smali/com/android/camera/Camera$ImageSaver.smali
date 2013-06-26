.class Lcom/android/camera/Camera$ImageSaver;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSaver"
.end annotation


# instance fields
.field private mPendingThumbnail:Lcom/android/camera/Thumbnail;

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Camera$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field private mUpdateThumbnailLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .parameter

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    .line 1113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 1114
    invoke-virtual {p0}, Lcom/android/camera/Camera$ImageSaver;->start()V

    .line 1115
    return-void
.end method

.method private storeImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V
    .locals 17
    .parameter "data"
    .parameter "uri"
    .parameter "title"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "thumbnailWidth"
    .parameter "orientation"

    .prologue
    .line 1223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    iget-object v3, v3, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "picture-format"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1224
    .local v11, pictureFormat:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 1225
    const-string v3, "camera"

    const-string v4, "image data null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_0
    :goto_0
    return-void

    .line 1228
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$5500(Lcom/android/camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p8

    move-object/from16 v8, p1

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v3 .. v11}, Lcom/android/camera/Storage;->updateImage(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;I[BIILjava/lang/String;)Z

    move-result v14

    .line 1230
    .local v14, ok:Z
    if-eqz v14, :cond_0

    .line 1232
    monitor-enter p0

    .line 1237
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_3

    const/4 v13, 0x1

    .line 1238
    .local v13, needThumbnail:Z
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1239
    if-eqz v13, :cond_2

    .line 1242
    move/from16 v0, p5

    int-to-double v3, v0

    move/from16 v0, p7

    int-to-double v5, v0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v15, v3

    .line 1243
    .local v15, ratio:I
    invoke-static {v15}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v12

    .line 1244
    .local v12, inSampleSize:I
    move-object/from16 v0, p1

    move/from16 v1, p8

    move-object/from16 v2, p2

    invoke-static {v0, v1, v12, v2}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;)Lcom/android/camera/Thumbnail;

    move-result-object v16

    .line 1246
    .local v16, t:Lcom/android/camera/Thumbnail;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/Camera$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1249
    :try_start_1
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/Camera$ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 1250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$1100(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v3

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1251
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1253
    .end local v12           #inSampleSize:I
    .end local v15           #ratio:I
    .end local v16           #t:Lcom/android/camera/Thumbnail;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 1237
    .end local v13           #needThumbnail:Z
    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    .line 1238
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1251
    .restart local v12       #inSampleSize:I
    .restart local v13       #needThumbnail:Z
    .restart local v15       #ratio:I
    .restart local v16       #t:Lcom/android/camera/Thumbnail;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method


# virtual methods
.method public addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V
    .locals 3
    .parameter "data"
    .parameter "uri"
    .parameter "title"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "thumbnailWidth"
    .parameter "orientation"

    .prologue
    const/4 v1, 0x0

    .line 1121
    new-instance v0, Lcom/android/camera/Camera$SaveRequest;

    invoke-direct {v0, v1}, Lcom/android/camera/Camera$SaveRequest;-><init>(Lcom/android/camera/Camera$1;)V

    .line 1122
    .local v0, r:Lcom/android/camera/Camera$SaveRequest;
    iput-object p1, v0, Lcom/android/camera/Camera$SaveRequest;->data:[B

    .line 1123
    iput-object p2, v0, Lcom/android/camera/Camera$SaveRequest;->uri:Landroid/net/Uri;

    .line 1124
    iput-object p3, v0, Lcom/android/camera/Camera$SaveRequest;->title:Ljava/lang/String;

    .line 1125
    if-nez p4, :cond_0

    :goto_0
    iput-object v1, v0, Lcom/android/camera/Camera$SaveRequest;->loc:Landroid/location/Location;

    .line 1126
    iput p5, v0, Lcom/android/camera/Camera$SaveRequest;->width:I

    .line 1127
    iput p6, v0, Lcom/android/camera/Camera$SaveRequest;->height:I

    .line 1128
    iput p7, v0, Lcom/android/camera/Camera$SaveRequest;->thumbnailWidth:I

    .line 1129
    iput p8, v0, Lcom/android/camera/Camera$SaveRequest;->orientation:I

    .line 1130
    monitor-enter p0

    .line 1131
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 1133
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1134
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1125
    :cond_0
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p4}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0

    .line 1138
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1139
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1140
    monitor-exit p0

    .line 1141
    return-void

    .line 1140
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1191
    invoke-virtual {p0}, Lcom/android/camera/Camera$ImageSaver;->waitDone()V

    .line 1192
    monitor-enter p0

    .line 1193
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/Camera$ImageSaver;->mStop:Z

    .line 1194
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1195
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1197
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/Camera$ImageSaver;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1201
    :goto_0
    return-void

    .line 1195
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1198
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 10

    .prologue
    .line 1148
    :goto_0
    monitor-enter p0

    .line 1149
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1150
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1154
    iget-boolean v0, p0, Lcom/android/camera/Camera$ImageSaver;->mStop:Z

    if-eqz v0, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1173
    return-void

    .line 1157
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1161
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 1164
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1163
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/Camera$SaveRequest;

    .line 1164
    .local v9, r:Lcom/android/camera/Camera$SaveRequest;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1165
    iget-object v1, v9, Lcom/android/camera/Camera$SaveRequest;->data:[B

    iget-object v2, v9, Lcom/android/camera/Camera$SaveRequest;->uri:Landroid/net/Uri;

    iget-object v3, v9, Lcom/android/camera/Camera$SaveRequest;->title:Ljava/lang/String;

    iget-object v4, v9, Lcom/android/camera/Camera$SaveRequest;->loc:Landroid/location/Location;

    iget v5, v9, Lcom/android/camera/Camera$SaveRequest;->width:I

    iget v6, v9, Lcom/android/camera/Camera$SaveRequest;->height:I

    iget v7, v9, Lcom/android/camera/Camera$SaveRequest;->thumbnailWidth:I

    iget v8, v9, Lcom/android/camera/Camera$SaveRequest;->orientation:I

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/Camera$ImageSaver;->storeImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V

    .line 1167
    monitor-enter p0

    .line 1168
    :try_start_4
    iget-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1169
    if-eqz v9, :cond_2

    const/4 v9, 0x0

    .line 1170
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1171
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1158
    .end local v9           #r:Lcom/android/camera/Camera$SaveRequest;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public updateThumbnail()V
    .locals 4

    .prologue
    .line 1207
    iget-object v2, p0, Lcom/android/camera/Camera$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1208
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1100(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1209
    iget-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 1210
    .local v0, t:Lcom/android/camera/Thumbnail;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 1211
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1213
    if-eqz v0, :cond_0

    .line 1214
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    iput-object v0, v1, Lcom/android/camera/Camera;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 1215
    iget-object v1, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/Camera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/android/camera/Camera$ImageSaver;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/Camera;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v2}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1217
    :cond_0
    return-void

    .line 1211
    .end local v0           #t:Lcom/android/camera/Thumbnail;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public waitDone()V
    .locals 1

    .prologue
    .line 1177
    monitor-enter p0

    .line 1178
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1180
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1181
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1185
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1186
    invoke-virtual {p0}, Lcom/android/camera/Camera$ImageSaver;->updateThumbnail()V

    .line 1187
    return-void

    .line 1185
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
