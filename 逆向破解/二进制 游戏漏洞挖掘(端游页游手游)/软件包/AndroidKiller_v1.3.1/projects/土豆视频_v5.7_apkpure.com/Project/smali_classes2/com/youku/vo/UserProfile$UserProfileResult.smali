.class public Lcom/youku/vo/UserProfile$UserProfileResult;
.super Ljava/lang/Object;
.source "UserProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserProfileResult"
.end annotation


# instance fields
.field public avatar:Ljava/lang/String;

.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/UserProfile$UserProfileItems;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/youku/vo/UserProfile;

.field public userdesc:Ljava/lang/String;

.field public userid:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/UserProfile;)V
    .locals 1

    .prologue
    .line 18
    iput-object p1, p0, Lcom/youku/vo/UserProfile$UserProfileResult;->this$0:Lcom/youku/vo/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/UserProfile$UserProfileResult;->items:Ljava/util/ArrayList;

    return-void
.end method
