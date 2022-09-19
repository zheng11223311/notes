.class Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader$2;
.super Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener$Stub;
.source "VoteLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;->GetVoteOption(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/listener/OnGetVoteOptionsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;

.field final synthetic val$l:Lcom/youku/laifeng/libcuteroom/model/listener/OnGetVoteOptionsListener;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;Lcom/youku/laifeng/libcuteroom/model/listener/OnGetVoteOptionsListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader$2;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;

    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader$2;->val$l:Lcom/youku/laifeng/libcuteroom/model/listener/OnGetVoteOptionsListener;

    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReciveDirectListener(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V
    .locals 4
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .prologue
    .line 77
    invoke-virtual {p2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getExtraData()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;->getFactory()Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;

    move-result-object v1

    const-class v2, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo;

    invoke-virtual {p2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getParserData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo;

    .line 79
    .local v0, "info":Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo;
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader$2;->val$l:Lcom/youku/laifeng/libcuteroom/model/listener/OnGetVoteOptionsListener;

    invoke-interface {v1, v0}, Lcom/youku/laifeng/libcuteroom/model/listener/OnGetVoteOptionsListener;->OnGetVoteOptionsCompletion(Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo;)V

    .line 84
    .end local v0    # "info":Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo;
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader$2;->val$l:Lcom/youku/laifeng/libcuteroom/model/listener/OnGetVoteOptionsListener;

    invoke-virtual {p2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/youku/laifeng/libcuteroom/model/listener/OnGetVoteOptionsListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onErrorReciveDirectListener(Ljava/lang/String;ILcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V
    .locals 2
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "errCode"    # I
    .param p3, "result"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader$2;->val$l:Lcom/youku/laifeng/libcuteroom/model/listener/OnGetVoteOptionsListener;

    invoke-virtual {p3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/listener/OnGetVoteOptionsListener;->onError(Ljava/lang/String;)V

    .line 88
    return-void
.end method
