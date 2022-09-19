.class public Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;
.super Ljava/lang/Object;
.source "SubscribeBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/SubscribeBean$UserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemInfos"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;,
        Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;
    }
.end annotation


# instance fields
.field public data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;",
            ">;"
        }
    .end annotation
.end field

.field public items:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;

.field final synthetic this$0:Lcom/youku/vo/SubscribeBean$UserInfo;


# direct methods
.method public constructor <init>(Lcom/youku/vo/SubscribeBean$UserInfo;)V
    .locals 1

    .prologue
    .line 91
    iput-object p1, p0, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->this$0:Lcom/youku/vo/SubscribeBean$UserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;->data:Ljava/util/ArrayList;

    .line 110
    return-void
.end method
