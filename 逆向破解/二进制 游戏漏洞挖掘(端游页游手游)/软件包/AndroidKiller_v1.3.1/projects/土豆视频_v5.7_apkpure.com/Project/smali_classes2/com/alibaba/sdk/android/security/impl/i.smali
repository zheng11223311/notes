.class public final Lcom/alibaba/sdk/android/security/impl/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/security/WebAccessPermission;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/security/impl/i;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final checkPermission(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/security/impl/i;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
