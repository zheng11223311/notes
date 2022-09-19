.class public Lcom/youku/vo/Notifications$Sub_updates;
.super Ljava/lang/Object;
.source "Notifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Sub_updates"
.end annotation


# instance fields
.field public cid:Ljava/lang/String;

.field public count:I

.field public id:Ljava/lang/String;

.field public sysid:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/Notifications;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/Notifications;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/youku/vo/Notifications$Sub_updates;->this$0:Lcom/youku/vo/Notifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
