.class public Lio/rong/voiplib/utils/VoIPUtil;
.super Ljava/lang/Object;
.source "VoIPUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalIpAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v7

    .line 23
    .local v7, "nilist":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 24
    .local v6, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "usbnet"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 26
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v4

    .line 27
    .local v4, "ialist":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 28
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .local v5, "ipv4":Ljava/lang/String;
    invoke-static {v5}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    .line 38
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "ialist":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v5    # "ipv4":Ljava/lang/String;
    .end local v6    # "ni":Ljava/net/NetworkInterface;
    .end local v7    # "nilist":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    :goto_0
    return-object v5

    .line 35
    :catch_0
    move-exception v1

    .line 36
    .local v1, "ex":Ljava/net/SocketException;
    const-string/jumbo v8, "socket_err"

    invoke-virtual {v1}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .end local v1    # "ex":Ljava/net/SocketException;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getPort()I
    .locals 6

    .prologue
    .line 42
    const/4 v3, 0x0

    .line 44
    .local v3, "s":Ljava/net/DatagramSocket;
    const/16 v1, 0x2710

    .line 45
    .local v1, "MINPORT":I
    const v0, 0xfde8

    .local v0, "MAXPORT":I
    move-object v4, v3

    .line 47
    .end local v3    # "s":Ljava/net/DatagramSocket;
    .local v4, "s":Ljava/net/DatagramSocket;
    :goto_0
    if-ge v1, v0, :cond_0

    .line 50
    :try_start_0
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v3, v1, v5}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v4    # "s":Ljava/net/DatagramSocket;
    .restart local v3    # "s":Ljava/net/DatagramSocket;
    :try_start_1
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    .end local v1    # "MINPORT":I
    .end local v3    # "s":Ljava/net/DatagramSocket;
    :goto_1
    return v1

    .line 53
    .restart local v1    # "MINPORT":I
    .restart local v4    # "s":Ljava/net/DatagramSocket;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 47
    .end local v4    # "s":Ljava/net/DatagramSocket;
    .local v2, "e":Ljava/io/IOException;
    .restart local v3    # "s":Ljava/net/DatagramSocket;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move-object v4, v3

    .end local v3    # "s":Ljava/net/DatagramSocket;
    .restart local v4    # "s":Ljava/net/DatagramSocket;
    goto :goto_0

    .line 60
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_1

    .line 53
    .end local v4    # "s":Ljava/net/DatagramSocket;
    .restart local v3    # "s":Ljava/net/DatagramSocket;
    :catch_1
    move-exception v2

    goto :goto_2
.end method
