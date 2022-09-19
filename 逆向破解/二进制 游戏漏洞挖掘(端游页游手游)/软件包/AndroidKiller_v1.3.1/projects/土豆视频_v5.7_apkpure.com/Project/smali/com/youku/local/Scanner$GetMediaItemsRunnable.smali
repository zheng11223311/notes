.class Lcom/youku/local/Scanner$GetMediaItemsRunnable;
.super Ljava/lang/Object;
.source "Scanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/local/Scanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetMediaItemsRunnable"
.end annotation


# instance fields
.field private final directories:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final directoriesScanned:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/youku/local/Scanner;


# direct methods
.method private constructor <init>(Lcom/youku/local/Scanner;)V
    .locals 1

    .prologue
    .line 91
    iput-object p1, p0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->directories:Ljava/util/Stack;

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->directoriesScanned:Ljava/util/HashSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/local/Scanner;Lcom/youku/local/Scanner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/local/Scanner;
    .param p2, "x1"    # Lcom/youku/local/Scanner$1;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/youku/local/Scanner$GetMediaItemsRunnable;-><init>(Lcom/youku/local/Scanner;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    .prologue
    .line 97
    const-string v25, "LOCAL_SCAN"

    const-string/jumbo v26, "scan start"

    invoke-static/range {v25 .. v26}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$100(Lcom/youku/local/Scanner;)Landroid/os/Handler;

    move-result-object v25

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$200(Lcom/youku/local/Scanner;)Lcom/youku/local/IScanListener;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$100(Lcom/youku/local/Scanner;)Landroid/os/Handler;

    move-result-object v25

    new-instance v26, Lcom/youku/local/Scanner$GetMediaItemsRunnable$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/youku/local/Scanner$GetMediaItemsRunnable$1;-><init>(Lcom/youku/local/Scanner$GetMediaItemsRunnable;)V

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/youku/local/Scanner;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/MediaDatabase;->getInstance(Landroid/content/Context;)Lcom/youku/local/MediaDatabase;

    move-result-object v4

    .line 109
    .local v4, "DBManager":Lcom/youku/local/MediaDatabase;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v20, "mediaDirs":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {}, Lcom/youku/local/Util;->getMediaDirectories()[Ljava/lang/String;

    move-result-object v24

    .line 111
    .local v24, "storageDirs":[Ljava/lang/String;
    move-object/from16 v6, v24

    .local v6, "arr$":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    aget-object v8, v6, v16

    .line 112
    .local v8, "dir":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v12, "f":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 114
    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 116
    .end local v8    # "dir":Ljava/lang/String;
    .end local v12    # "f":Ljava/io/File;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->directories:Ljava/util/Stack;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/youku/local/Scanner;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/youku/local/MediaDatabase;->getMedias(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v11

    .line 119
    .local v11, "existingMedias":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/youku/local/Media;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 121
    .local v5, "addedLocations":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$300(Lcom/youku/local/Scanner;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$400(Lcom/youku/local/Scanner;)Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$300(Lcom/youku/local/Scanner;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 125
    const/4 v7, 0x0

    .line 126
    .local v7, "count":I
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .end local v6    # "arr$":[Ljava/lang/String;
    .local v21, "mediaToScan":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_3
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->directories:Ljava/util/Stack;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/Stack;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_b

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->directories:Ljava/util/Stack;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 132
    .local v8, "dir":Ljava/io/File;
    const-string v25, "LOCAL_SCAN"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "current dir:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 134
    .local v9, "dirPath":Ljava/lang/String;
    const/4 v12, 0x0

    .line 137
    .local v12, "f":[Ljava/io/File;
    const-string v25, "/proc/"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_3

    const-string v25, "/sys/"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_3

    const-string v25, "/dev/"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v25

    if-nez v25, :cond_3

    .line 144
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 148
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->directoriesScanned:Ljava/util/HashSet;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->directoriesScanned:Ljava/util/HashSet;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v25, Ljava/io/File;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/.nomedia"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_3

    .line 159
    const-string v25, "LOCAL_SCAN"

    const-string v26, "listFiles"

    invoke-static/range {v25 .. v26}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    :try_start_3
    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v22

    .line 162
    .local v22, "nameList":[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    invoke-static {}, Lcom/youku/local/Scanner;->access$500()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_5

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_5

    const-string v25, "/Camera"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_5

    .line 165
    const-string v25, "LOCAL_SCAN"

    const-string v26, "exceeds max file size,skip this dir."

    invoke-static/range {v25 .. v26}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 180
    .end local v22    # "nameList":[Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 183
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v25, "LOCAL_SCAN"

    const-string/jumbo v26, "scan exception"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v10}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 235
    .end local v8    # "dir":Ljava/io/File;
    .end local v9    # "dirPath":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v12    # "f":[Ljava/io/File;
    .end local v16    # "i$":I
    :catchall_0
    move-exception v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/youku/local/Scanner;->getVideoItems()Ljava/util/ArrayList;

    move-result-object v18

    .line 236
    .local v18, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/local/Media;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/youku/local/Scanner;->access$100(Lcom/youku/local/Scanner;)Landroid/os/Handler;

    move-result-object v26

    if-eqz v26, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/youku/local/Scanner;->access$200(Lcom/youku/local/Scanner;)Lcom/youku/local/IScanListener;

    move-result-object v26

    if-eqz v26, :cond_4

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/youku/local/Scanner;->access$100(Lcom/youku/local/Scanner;)Landroid/os/Handler;

    move-result-object v26

    new-instance v27, Lcom/youku/local/Scanner$GetMediaItemsRunnable$3;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/youku/local/Scanner$GetMediaItemsRunnable$3;-><init>(Lcom/youku/local/Scanner$GetMediaItemsRunnable;Ljava/util/List;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    :cond_4
    const-string v26, "LOCAL_SCAN"

    const-string/jumbo v27, "scan stop"

    invoke-static/range {v26 .. v27}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v26, "LOCAL_SCAN"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "itemList:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/youku/local/Scanner;->access$600(Lcom/youku/local/Scanner;)Z

    move-result v26

    if-nez v26, :cond_17

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v26

    const-string v27, "mounted"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 251
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_16

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 252
    .local v15, "fileURI":Ljava/lang/String;
    invoke-virtual {v11, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 145
    .end local v15    # "fileURI":Ljava/lang/String;
    .end local v18    # "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/local/Media;>;"
    .restart local v8    # "dir":Ljava/io/File;
    .restart local v9    # "dirPath":Ljava/lang/String;
    .restart local v12    # "f":[Ljava/io/File;
    .local v16, "i$":I
    :catch_1
    move-exception v10

    .line 146
    .local v10, "e":Ljava/io/IOException;
    :try_start_5
    const-string v25, "LOCAL_SCAN"

    move-object/from16 v0, v25

    invoke-static {v0, v10}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 170
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v22    # "nameList":[Ljava/lang/String;
    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/youku/local/Scanner;->mediaFileFilter:Lcom/youku/local/Scanner$MediaItemFilter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 171
    move-object v6, v12

    .local v6, "arr$":[Ljava/io/File;
    array-length v0, v6

    move/from16 v19, v0

    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    aget-object v13, v6, v16

    .line 172
    .local v13, "file":Ljava/io/File;
    const-string v25, "LOCAL_SCAN"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "scan:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v25

    if-eqz v25, :cond_7

    .line 174
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_6
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 175
    :cond_7
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v25

    if-eqz v25, :cond_6

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->directories:Ljava/util/Stack;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 186
    .end local v6    # "arr$":[Ljava/io/File;
    .end local v13    # "file":Ljava/io/File;
    :cond_8
    :try_start_7
    const-string v25, "LOCAL_SCAN"

    const-string/jumbo v26, "scan next"

    invoke-static/range {v25 .. v26}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$600(Lcom/youku/local/Scanner;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 188
    const-string v25, "LOCAL_SCAN"

    const-string v26, "Stopping scan"

    invoke-static/range {v25 .. v26}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/youku/local/Scanner;->getVideoItems()Ljava/util/ArrayList;

    move-result-object v18

    .line 236
    .restart local v18    # "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/local/Media;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$100(Lcom/youku/local/Scanner;)Landroid/os/Handler;

    move-result-object v25

    if-eqz v25, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$200(Lcom/youku/local/Scanner;)Lcom/youku/local/IScanListener;

    move-result-object v25

    if-eqz v25, :cond_9

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$100(Lcom/youku/local/Scanner;)Landroid/os/Handler;

    move-result-object v25

    new-instance v26, Lcom/youku/local/Scanner$GetMediaItemsRunnable$3;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/youku/local/Scanner$GetMediaItemsRunnable$3;-><init>(Lcom/youku/local/Scanner$GetMediaItemsRunnable;Ljava/util/List;)V

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    :cond_9
    const-string v25, "LOCAL_SCAN"

    const-string/jumbo v26, "scan stop"

    invoke-static/range {v25 .. v26}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v25, "LOCAL_SCAN"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "itemList:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$600(Lcom/youku/local/Scanner;)Z

    move-result v25

    if-nez v25, :cond_18

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v25

    const-string v26, "mounted"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_18

    .line 251
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 252
    .restart local v15    # "fileURI":Ljava/lang/String;
    invoke-virtual {v11, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 254
    .end local v15    # "fileURI":Ljava/lang/String;
    :cond_a
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/youku/local/MediaDatabase;->removeMedias(Ljava/util/Set;)V

    .line 255
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_18

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 256
    .local v14, "fileName":Ljava/lang/String;
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Util;->deleteFile(Ljava/io/File;)V

    goto :goto_7

    .line 194
    .end local v8    # "dir":Ljava/io/File;
    .end local v9    # "dirPath":Ljava/lang/String;
    .end local v12    # "f":[Ljava/io/File;
    .end local v14    # "fileName":Ljava/lang/String;
    .end local v18    # "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/local/Media;>;"
    .end local v22    # "nameList":[Ljava/lang/String;
    .local v16, "i$":I
    :cond_b
    :try_start_8
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_13

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    .line 195
    .restart local v13    # "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 196
    .restart local v15    # "fileURI":Ljava/lang/String;
    move/from16 v23, v7

    .line 197
    .local v23, "notifyCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$100(Lcom/youku/local/Scanner;)Landroid/os/Handler;

    move-result-object v25

    if-eqz v25, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$200(Lcom/youku/local/Scanner;)Lcom/youku/local/IScanListener;

    move-result-object v25

    if-eqz v25, :cond_d

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$100(Lcom/youku/local/Scanner;)Landroid/os/Handler;

    move-result-object v25

    new-instance v26, Lcom/youku/local/Scanner$GetMediaItemsRunnable$2;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/youku/local/Scanner$GetMediaItemsRunnable$2;-><init>(Lcom/youku/local/Scanner$GetMediaItemsRunnable;ILjava/util/ArrayList;)V

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    :cond_d
    add-int/lit8 v7, v7, 0x1

    .line 209
    const/16 v17, 0x0

    .line 210
    .local v17, "item":Lcom/youku/local/Media;
    invoke-virtual {v11, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 211
    invoke-virtual {v5, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_e

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$300(Lcom/youku/local/Scanner;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 213
    invoke-virtual {v11, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "item":Lcom/youku/local/Media;
    check-cast v17, Lcom/youku/local/Media;

    .line 214
    .restart local v17    # "item":Lcom/youku/local/Media;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$400(Lcom/youku/local/Scanner;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$300(Lcom/youku/local/Scanner;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 216
    invoke-virtual {v5, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_e
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$700(Lcom/youku/local/Scanner;)Lcom/youku/local/Thumbnailer;

    move-result-object v25

    if-eqz v25, :cond_f

    if-eqz v17, :cond_f

    invoke-virtual/range {v17 .. v17}, Lcom/youku/local/Media;->isThumbnailExist()Z

    move-result v25

    if-nez v25, :cond_f

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$700(Lcom/youku/local/Scanner;)Lcom/youku/local/Thumbnailer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/youku/local/Thumbnailer;->addJob(Lcom/youku/local/Media;)V

    .line 229
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$600(Lcom/youku/local/Scanner;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 230
    const-string v25, "LOCAL_SCAN"

    const-string v26, "Stopping scan"

    invoke-static/range {v25 .. v26}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/youku/local/Scanner;->getVideoItems()Ljava/util/ArrayList;

    move-result-object v18

    .line 236
    .restart local v18    # "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/local/Media;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$100(Lcom/youku/local/Scanner;)Landroid/os/Handler;

    move-result-object v25

    if-eqz v25, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$200(Lcom/youku/local/Scanner;)Lcom/youku/local/IScanListener;

    move-result-object v25

    if-eqz v25, :cond_10

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$100(Lcom/youku/local/Scanner;)Landroid/os/Handler;

    move-result-object v25

    new-instance v26, Lcom/youku/local/Scanner$GetMediaItemsRunnable$3;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/youku/local/Scanner$GetMediaItemsRunnable$3;-><init>(Lcom/youku/local/Scanner$GetMediaItemsRunnable;Ljava/util/List;)V

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    :cond_10
    const-string v25, "LOCAL_SCAN"

    const-string/jumbo v26, "scan stop"

    invoke-static/range {v25 .. v26}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v25, "LOCAL_SCAN"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "itemList:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$600(Lcom/youku/local/Scanner;)Z

    move-result v25

    if-nez v25, :cond_18

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v25

    const-string v26, "mounted"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_18

    .line 251
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_12

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "fileURI":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 252
    .restart local v15    # "fileURI":Ljava/lang/String;
    invoke-virtual {v11, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 219
    .end local v18    # "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/local/Media;>;"
    :cond_11
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$300(Lcom/youku/local/Scanner;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 220
    new-instance v17, Lcom/youku/local/Media;

    .end local v17    # "item":Lcom/youku/local/Media;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/youku/local/Scanner;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/youku/local/Media;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 222
    .restart local v17    # "item":Lcom/youku/local/Media;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$400(Lcom/youku/local/Scanner;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$300(Lcom/youku/local/Scanner;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_8

    .line 254
    .restart local v18    # "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/local/Media;>;"
    :cond_12
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/youku/local/MediaDatabase;->removeMedias(Ljava/util/Set;)V

    .line 255
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_18

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 256
    .restart local v14    # "fileName":Ljava/lang/String;
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Util;->deleteFile(Ljava/io/File;)V

    goto :goto_a

    .line 235
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "fileName":Ljava/lang/String;
    .end local v15    # "fileURI":Ljava/lang/String;
    .end local v17    # "item":Lcom/youku/local/Media;
    .end local v18    # "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/local/Media;>;"
    .end local v23    # "notifyCount":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/youku/local/Scanner;->getVideoItems()Ljava/util/ArrayList;

    move-result-object v18

    .line 236
    .restart local v18    # "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/local/Media;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$100(Lcom/youku/local/Scanner;)Landroid/os/Handler;

    move-result-object v25

    if-eqz v25, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$200(Lcom/youku/local/Scanner;)Lcom/youku/local/IScanListener;

    move-result-object v25

    if-eqz v25, :cond_14

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$100(Lcom/youku/local/Scanner;)Landroid/os/Handler;

    move-result-object v25

    new-instance v26, Lcom/youku/local/Scanner$GetMediaItemsRunnable$3;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/youku/local/Scanner$GetMediaItemsRunnable$3;-><init>(Lcom/youku/local/Scanner$GetMediaItemsRunnable;Ljava/util/List;)V

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    :cond_14
    const-string v25, "LOCAL_SCAN"

    const-string/jumbo v26, "scan stop"

    invoke-static/range {v25 .. v26}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v25, "LOCAL_SCAN"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "itemList:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/local/Scanner$GetMediaItemsRunnable;->this$0:Lcom/youku/local/Scanner;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Scanner;->access$600(Lcom/youku/local/Scanner;)Z

    move-result v25

    if-nez v25, :cond_18

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v25

    const-string v26, "mounted"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_18

    .line 251
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_15

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 252
    .restart local v15    # "fileURI":Ljava/lang/String;
    invoke-virtual {v11, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 254
    .end local v15    # "fileURI":Ljava/lang/String;
    :cond_15
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/youku/local/MediaDatabase;->removeMedias(Ljava/util/Set;)V

    .line 255
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_18

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 256
    .restart local v14    # "fileName":Ljava/lang/String;
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v25 .. v25}, Lcom/youku/local/Util;->deleteFile(Ljava/io/File;)V

    goto :goto_c

    .line 254
    .end local v14    # "fileName":Ljava/lang/String;
    :cond_16
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/youku/local/MediaDatabase;->removeMedias(Ljava/util/Set;)V

    .line 255
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_17

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 256
    .restart local v14    # "fileName":Ljava/lang/String;
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v26 .. v26}, Lcom/youku/local/Util;->deleteFile(Ljava/io/File;)V

    goto :goto_d

    .line 258
    .end local v14    # "fileName":Ljava/lang/String;
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_17
    throw v25

    .line 259
    :cond_18
    return-void
.end method
