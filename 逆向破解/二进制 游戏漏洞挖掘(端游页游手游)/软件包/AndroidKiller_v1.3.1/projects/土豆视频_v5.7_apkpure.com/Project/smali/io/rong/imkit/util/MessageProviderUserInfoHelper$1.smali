.class Lio/rong/imkit/util/MessageProviderUserInfoHelper$1;
.super Ljava/lang/Object;
.source "MessageProviderUserInfoHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/util/MessageProviderUserInfoHelper;->notifyMessageUpdate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/util/MessageProviderUserInfoHelper;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imkit/util/MessageProviderUserInfoHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lio/rong/imkit/util/MessageProviderUserInfoHelper$1;->this$0:Lio/rong/imkit/util/MessageProviderUserInfoHelper;

    iput-object p2, p0, Lio/rong/imkit/util/MessageProviderUserInfoHelper$1;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lio/rong/imkit/util/MessageProviderUserInfoHelper$1;->this$0:Lio/rong/imkit/util/MessageProviderUserInfoHelper;

    iget-object v1, p0, Lio/rong/imkit/util/MessageProviderUserInfoHelper$1;->val$userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->removeCacheUserId(Ljava/lang/String;)V

    .line 100
    return-void
.end method
