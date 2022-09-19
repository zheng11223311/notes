.class Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$4;
.super Ljava/lang/Object;
.source "LevelProxy.java"

# interfaces
.implements Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->_getUserLevel(Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;Lcom/youku/laifeng/libcuteroom/model/listener/OnGetUserLevelListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;

.field final synthetic val$l:Lcom/youku/laifeng/libcuteroom/model/listener/OnGetUserLevelListener;

.field final synthetic val$levelInfo:Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;Lcom/youku/laifeng/libcuteroom/model/listener/OnGetUserLevelListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$4;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;

    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$4;->val$levelInfo:Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;

    iput-object p3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$4;->val$l:Lcom/youku/laifeng/libcuteroom/model/listener/OnGetUserLevelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    .prologue
    .line 212
    :try_start_0
    const-string v2, "LevelDownload"

    const-string v3, "getUserLevel onCompletion"

    invoke-static {v2, v3}, Lcom/youku/laifeng/libcuteroom/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->getFullPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 215
    .local v1, "zip":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 216
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getUserlevelDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/youku/laifeng/libcuteroom/utils/LFZipNameMapper;

    invoke-direct {v3}, Lcom/youku/laifeng/libcuteroom/utils/LFZipNameMapper;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/corncop/capricornus/zip/ZipUtil;->unpack(Ljava/io/File;Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;)V

    .line 217
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$4;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getUserlevelDirPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "userSign"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$4;->val$levelInfo:Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;

    invoke-virtual {v4}, Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;->getSign()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->access$500(Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;Ljava/io/File;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 221
    :cond_0
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$4;->val$l:Lcom/youku/laifeng/libcuteroom/model/listener/OnGetUserLevelListener;

    if-eqz v2, :cond_1

    .line 222
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$4;->val$l:Lcom/youku/laifeng/libcuteroom/model/listener/OnGetUserLevelListener;

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$4;->val$levelInfo:Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;

    invoke-interface {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/listener/OnGetUserLevelListener;->onGetUserLevelComplition(Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 232
    .end local v1    # "zip":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 224
    .restart local v1    # "zip":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 229
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "zip":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 230
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onEvent(ILcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "info"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    .prologue
    .line 206
    const-string v0, "LevelDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserLevel code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 202
    return-void
.end method
