.class Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$1;
.super Ljava/lang/Object;
.source "DataLoader.java"

# interfaces
.implements Lcom/youku/laifeng/libcuteroom/model/listener/OnGroupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "r"    # Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;

    .prologue
    .line 172
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->access$000(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 173
    :try_start_0
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->access$000(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->access$000(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 175
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 178
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 179
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->access$100(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    :try_start_1
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->access$200(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCancelListener;

    invoke-interface {v2, p1}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCancelListener;->onDataDirectCancel(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :cond_1
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->access$000(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->access$100(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->access$200(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;>;"
    :cond_2
    monitor-exit v3

    .line 192
    return-void

    .line 182
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;>;"
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 191
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public finish(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "r"    # Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;

    .prologue
    .line 196
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->access$000(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 197
    :try_start_0
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->access$000(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->access$000(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 199
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 203
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->access$100(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    :try_start_1
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->access$200(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCancelListener;

    invoke-interface {v2, p1}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCancelListener;->onDataDirectCancel(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    :cond_1
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->access$000(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->access$100(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->access$200(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;>;"
    :cond_2
    monitor-exit v3

    .line 216
    return-void

    .line 206
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;>;"
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 215
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
