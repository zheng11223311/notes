.class Lio/rong/imkit/notification/MessageNotificationManager$2;
.super Ljava/util/TimerTask;
.source "MessageNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/notification/MessageNotificationManager;->notify(Landroid/content/Context;Lio/rong/imlib/model/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/notification/MessageNotificationManager;


# direct methods
.method constructor <init>(Lio/rong/imkit/notification/MessageNotificationManager;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lio/rong/imkit/notification/MessageNotificationManager$2;->this$0:Lio/rong/imkit/notification/MessageNotificationManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    sput-boolean v0, Lio/rong/imkit/notification/MessageNotificationManager;->isInNeglectTime:Z

    .line 110
    return-void
.end method
