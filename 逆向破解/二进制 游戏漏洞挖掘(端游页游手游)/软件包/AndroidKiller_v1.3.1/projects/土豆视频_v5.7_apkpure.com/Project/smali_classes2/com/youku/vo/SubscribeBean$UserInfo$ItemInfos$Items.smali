.class public Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;
.super Ljava/lang/Object;
.source "SubscribeBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Items"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;
    }
.end annotation


# instance fields
.field public data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;


# direct methods
.method public constructor <init>(Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;)V
    .locals 1

    .prologue
    .line 110
    iput-object p1, p0, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;->this$1:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;->data:Ljava/util/ArrayList;

    .line 113
    return-void
.end method
