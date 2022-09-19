.class public Lcom/youku/vo/SubscribeBean$Recommend;
.super Ljava/lang/Object;
.source "SubscribeBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/SubscribeBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Recommend"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/SubscribeBean$Recommend$LastItem;
    }
.end annotation


# instance fields
.field public album_id:Ljava/lang/String;

.field public avatar:Ljava/lang/String;

.field public isSubed:Z

.field public isVuser:Z

.field public last_item:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SubscribeBean$Recommend$LastItem;",
            ">;"
        }
    .end annotation
.end field

.field public latest_update:Ljava/lang/String;

.field public podcast_user_id:Ljava/lang/String;

.field public short_desc:Ljava/lang/String;

.field public subed_count:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/SubscribeBean;

.field public title:Ljava/lang/String;

.field public video_count:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/SubscribeBean;)V
    .locals 1

    .prologue
    .line 18
    iput-object p1, p0, Lcom/youku/vo/SubscribeBean$Recommend;->this$0:Lcom/youku/vo/SubscribeBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/vo/SubscribeBean$Recommend;->isSubed:Z

    .line 31
    return-void
.end method
