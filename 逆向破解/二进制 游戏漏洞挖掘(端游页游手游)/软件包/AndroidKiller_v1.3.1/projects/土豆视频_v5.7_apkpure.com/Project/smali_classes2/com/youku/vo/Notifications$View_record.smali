.class public Lcom/youku/vo/Notifications$View_record;
.super Ljava/lang/Object;
.source "Notifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "View_record"
.end annotation


# instance fields
.field public aid:Ljava/lang/String;

.field public iid:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/Notifications;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/Notifications;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/youku/vo/Notifications$View_record;->this$0:Lcom/youku/vo/Notifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
