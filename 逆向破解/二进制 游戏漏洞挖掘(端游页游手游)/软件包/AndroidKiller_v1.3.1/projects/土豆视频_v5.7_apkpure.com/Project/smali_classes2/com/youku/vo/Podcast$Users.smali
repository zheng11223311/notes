.class public Lcom/youku/vo/Podcast$Users;
.super Ljava/lang/Object;
.source "Podcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/Podcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Users"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/Podcast$Users$Subs;
    }
.end annotation


# instance fields
.field public page:I

.field public subs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/Podcast$Users$Subs;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/youku/vo/Podcast;

.field public total:I


# direct methods
.method public constructor <init>(Lcom/youku/vo/Podcast;)V
    .locals 1

    .prologue
    .line 20
    iput-object p1, p0, Lcom/youku/vo/Podcast$Users;->this$0:Lcom/youku/vo/Podcast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    .line 24
    return-void
.end method
