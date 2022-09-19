.class public Lcom/tudou/detail/vo/ActorInfo$Tabs;
.super Ljava/lang/Object;
.source "ActorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/vo/ActorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Tabs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;
    }
.end annotation


# instance fields
.field public count:I

.field public is_default:Z

.field public name:Ljava/lang/String;

.field public show_type:I

.field final synthetic this$0:Lcom/tudou/detail/vo/ActorInfo;

.field public videos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tudou/detail/vo/ActorInfo;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tudou/detail/vo/ActorInfo$Tabs;->this$0:Lcom/tudou/detail/vo/ActorInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method
