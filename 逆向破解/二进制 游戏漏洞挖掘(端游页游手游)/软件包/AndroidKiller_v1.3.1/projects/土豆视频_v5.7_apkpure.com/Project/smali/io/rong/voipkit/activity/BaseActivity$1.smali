.class Lio/rong/voipkit/activity/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/ultrapower/mcs/engine/ITransportListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/voipkit/activity/BaseActivity;->StartChat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/voipkit/activity/BaseActivity;


# direct methods
.method constructor <init>(Lio/rong/voipkit/activity/BaseActivity;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lio/rong/voipkit/activity/BaseActivity$1;->this$0:Lio/rong/voipkit/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnTransportFailed()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method
