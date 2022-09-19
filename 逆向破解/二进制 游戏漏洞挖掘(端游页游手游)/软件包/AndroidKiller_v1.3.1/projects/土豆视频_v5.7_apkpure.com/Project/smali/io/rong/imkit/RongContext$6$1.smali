.class Lio/rong/imkit/RongContext$6$1;
.super Ljava/lang/Object;
.source "RongContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongContext$6;->obtainValue(Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/RongContext$6;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongContext$6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lio/rong/imkit/RongContext$6$1;->this$1:Lio/rong/imkit/RongContext$6;

    iput-object p2, p0, Lio/rong/imkit/RongContext$6$1;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lio/rong/imkit/RongContext$6$1;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lio/rong/imkit/RongContext$6$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 551
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, "publicServiceType":Lio/rong/imlib/model/Conversation$PublicServiceType;
    iget-object v1, p0, Lio/rong/imkit/RongContext$6$1;->val$type:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 554
    sget-object v0, Lio/rong/imlib/model/Conversation$PublicServiceType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$PublicServiceType;

    .line 562
    :goto_0
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/RongContext$6$1;->val$id:Ljava/lang/String;

    new-instance v3, Lio/rong/imkit/RongContext$6$1$1;

    invoke-direct {v3, p0}, Lio/rong/imkit/RongContext$6$1$1;-><init>(Lio/rong/imkit/RongContext$6$1;)V

    invoke-virtual {v1, v0, v2, v3}, Lio/rong/imkit/RongIMClientWrapper;->getPublicServiceProfile(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 583
    .end local v0    # "publicServiceType":Lio/rong/imlib/model/Conversation$PublicServiceType;
    :cond_0
    :goto_1
    return-void

    .line 555
    .restart local v0    # "publicServiceType":Lio/rong/imlib/model/Conversation$PublicServiceType;
    :cond_1
    iget-object v1, p0, Lio/rong/imkit/RongContext$6$1;->val$type:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 556
    sget-object v0, Lio/rong/imlib/model/Conversation$PublicServiceType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$PublicServiceType;

    goto :goto_0

    .line 558
    :cond_2
    const-string v1, "PublicServiceInfoCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not found type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/RongContext$6$1;->val$type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
