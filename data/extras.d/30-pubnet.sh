# dib.sh - Devstack extras script to install diskimage-builder

if is_service_enabled neutron; then
    if [[ "$1" == "source" ]]; then
        # no-op
        :
    elif [[ "$1" == "stack" && "$2" == "pre-install" ]]; then
        # no-op
        :
    elif [[ "$1" == "stack" && "$2" == "install" ]]; then
        # no-op
        :
    elif [[ "$1" == "stack" && "$2" == "post-config" ]]; then
        # patch openvswitch port
	sudo ovs-vsctl add-port $PUBLIC_BRIDGE $PUB_NET_IFACE || true
	sudo ip addr del $PUBLIC_NETWORK_GATEWAY/24 dev $PUB_NET_IFACE || true
    elif [[ "$1" == "stack" && "$2" == "extra" ]]; then
        # no-op
        :
    fi

    if [[ "$1" == "unstack" ]]; then
        # no-op
        :
    fi

    if [[ "$1" == "clean" ]]; then
        # no-op
        :
    fi
fi
